import 'package:market/data/models/manufacture_model.dart';
import 'package:market/data/datasource/manufacture_datasource.dart';

class FakeManufactureDatasourceImpl implements ManufactureDatasource{

  List<ManufactureModel> manufactureList = [
    ManufactureModel('manufactureID1', 'Tommy Hilfiger', 'USA','https://i.pinimg.com/originals/40/fa/4d/40fa4da285df398dedff38c1c34bb113.jpg','Tommy Hilfiger — американская компания, производящая одежду, обувь, парфюмерию, оптические и солнечные очки, часы и различные кожаные изделия. В компании работает более 5000 сотрудников, совокупный оборот компании около 2 млрд долларов, прибыль порядка 135 млн долларов в год'),
    ManufactureModel('manufactureID2', 'Levis', 'USA','https://i.pinimg.com/originals/8b/37/21/8b3721f64e1e3de0c553f2d0ede5972b.jpg','Levi Strauss & Co. — американская компания, основанная в 1853 году Ливай Штрауссом; известный производитель одежды и обуви. Штаб-квартира — в Сан-Франциско, США.'),
    ManufactureModel('manufactureID3', 'Ralph Lauren', 'USA','https://croftandgraves.co.uk/wp-content/uploads/sites/8/2017/07/Ralph-Lauren-Polo-Logo-Font-1.jpg','Polo Ralph Lauren Corporation — американская компания со штаб-квартирой в Нью-Йорке, производитель одежды, аксессуаров, парфюмерии, мебели и других товаров для дома. По итогам 2006 года вошла в список крупнейших американских компаний Fortune 1000, заняв в рейтинге 657-е место.'),
    ManufactureModel('manufactureID4', 'FILA', 'Korea','https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Fila_logo.svg/400px-Fila_logo.svg.png',''),
    ManufactureModel('manufactureID5', 'Calvin Klein', 'USA','http://www.rabstol.net/uploads/gallery/main/513/rabstol_net_clothes_brands_07.jpg',''),
    ManufactureModel('manufactureID6', 'Lacoste', 'USA','http://tajsoap.tj/wp-content/uploads/2018/06/logo-lacoste.jpg',''),
    ManufactureModel('manufactureID7', 'Nike', 'USA','https://sneakerhead.ru/images/news/335169/tild3862-3765-4561-a165-623434383932__red-nike-logo.gif',''),
    ManufactureModel('manufactureID8', 'Hugo Boss', 'Korea','https://static.tildacdn.com/tild3164-3366-4734-b765-306530326433/Hugo_Boss.jpg',''),
    ManufactureModel('manufactureID9', 'Adidas', 'USA','http://obzorski.ru/wp-content/uploads/2016/07/Adidas_logo.png',''),
    ManufactureModel('manufactureID10', 'Korea', 'FILA','https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Fila_logo.svg/400px-Fila_logo.svg.png',''),
  ];

  @override
  Future<ManufactureModel> getManufactureByID(String manufactureID) async {
    return manufactureList.firstWhere((test) => test.getManufactureID == manufactureID);
  }

  @override
  Future<List<ManufactureModel>> getManufactures() async {
    return manufactureList;
  }

  @override
  Future<List<ManufactureModel>> getRandomManufactures(int quantity)async {
    return manufactureList.take(quantity).toList();
  }

}