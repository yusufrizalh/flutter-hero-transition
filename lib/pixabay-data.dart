class ImageData {
  int id;
  String title;
  String author;
  String imageLarge;
  ImageData({this.id, this.title, this.author, this.imageLarge});
  static List<ImageData> pixabay;

  ImageData.init() {
    pixabay = List();
    pixabay.add(
      ImageData(
          id: 1,
          title: 'elephant-trunk-tusks-forest-jungle',
          author: 'sasint',
          imageLarge:
              'https://cdn.pixabay.com/photo/2016/11/14/04/45/elephant-1822636_960_720.jpg'),
    );
    pixabay.add(
      ImageData(
          id: 2,
          title: 'ara-parrot-yellow-macaw-bird',
          author: 'Couleur',
          imageLarge:
              'https://cdn.pixabay.com/photo/2018/08/12/16/59/ara-3601194_960_720.jpg'),
    );
    pixabay.add(
      ImageData(
          id: 3,
          title: 'lion-predator-dangerous-mane',
          author: 'Alexas_Fotos',
          imageLarge:
              'https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045_960_720.jpg'),
    );
  }
}
