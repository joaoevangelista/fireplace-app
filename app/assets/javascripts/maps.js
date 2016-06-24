var handler = Gmaps.build('Google');

function generateMap(mLocations) {
  handler.buildMap(
    {
      provider: {},
      internal: {id: 'map'}
    },
    function(){
      markers = handler.addMarkers(mLocations);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(10);
    }
  );

  return handler;
}
