property_types = PropertyType.create([
  {title: 'Residential'},
  {title: 'Commercial'},
  {title: 'Business'},
  {title: 'Lots'}
]) if PropertyType.count == 0

photos = Photo.create([
  {title: 'No Still Photo'},
  {title: 'Add 30 Economic Photos at 3D WALKINTOUR resolution (+10.00)'},
  {title: 'Add 30 HDR DSLR Professional Photos (+99.00)'}
]) if Photo.count == 0