h  = mojs.helpers

describe 'Helpers ->', ->
  describe 'methods ->', ->
    describe 'prefix', ->
      it 'should have prefix', ->
        expect(h.prefix).toBeDefined()
        expect(h.prefix.js).toBeDefined()
        expect(h.prefix.css).toBeDefined()
        expect(h.prefix.lowercase).toBeDefined()
        expect(h.prefix.dom).toBeDefined()
    describe 'getRadialPoint', ->
      it 'should calculate radial point', ->
        point = h.getRadialPoint
          radius: 50
          angle:  90
          center: x: 50, y: 50
        expect(point.x).toBe 100
        expect(point.y).toBe 50
      it 'should return false if 1 of 3 options missed', ->
        point = h.getRadialPoint
          radius: 50
          angle:  90
        expect(point).toBeFalsy()
      it 'should return false only if 1 of 3 options missed but not falsy', ->
        point = h.getRadialPoint
          radius: 0
          angle:  90
          center: x: 0, y: 0
        expect(point).toBeTruthy()
      it 'options should have default empty object', ->
        point = h.getRadialPoint()
        expect(point).toBeFalsy()
        expect(h.getRadialPoint).not.toThrow()