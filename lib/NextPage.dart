import 'package:flutter/material.dart';
import 'phone.dart';
import 'phonedetail.dart';

class NextPage extends StatelessWidget {
  final String companyName;
  final double imageHeight; // Variable to control image height
  final double imageWidth; // Variable to control image width

  NextPage({required this.companyName, this.imageHeight = 75.0, this.imageWidth = 75.0});


  List<Phone> getPhonesRelatedToCompany(String companyName) {
    // Retrieve phones related to the selected company
    // Implement your logic here to fetch phones related to the company
    // This is a sample list, replace it with your data retrieval logic
    if (companyName == 'Apple') {
      return [
        Phone(
          name: 'iPhone 15 pro max',
          imageUrl: 'https://www.sathya.in/media/91887/catalog/APPLE%20Iphone%2015%20Pro_natural_titanium01-3.jpg',
          price: 1200,
          storageOptions: {
            '128GB': 1200.0,
            '256GB': 1400.0,
          },
          colorOptions: ['Black', 'White', 'Gold'],
          description: "Apple's iPhone 15 Pro Max is absolutely the biggest, meanest, best iPhone you can buy this year. It's back to carrying one exclusive feature — an upgraded telephoto camera — and it packs a processor that will actually be running console-grade games.",
        ),
        Phone(
          name: 'iPhone 14 pro max',
          imageUrl: 'https://appleasia.lk/wp-content/uploads/2023/03/iPhone-14-Pro-Max-Apple-Asia-Srilanka-Purple-1.webp',
          price: 1100,
          storageOptions: {
            '256GB': 1100.0,
            '512GB': 1300.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: "The phone comes with a 120 Hz refresh rate 6.70-inch touchscreen display offering a resolution of 2796x1290 pixels at a pixel density of 460 pixels per inch (ppi). The display sports Other for protection. iPhone 14 Pro Max is powered by a hexa-core Apple A16 Bionic processor.",
        ),
        Phone(
          name: 'iPhone 15',
          imageUrl: 'https://assets.swappie.com/cdn-cgi/image/width=600,height=600,fit=contain,format=auto/swappie-iphone-15-black-back.png?v=38',
          price: 1100,
          storageOptions: {
            '256GB': 1100.0,
            '512GB': 1300.0,
          },
          colorOptions: ['White', 'Silver', 'Blue'],
          description: "The Apple iPhone 15 is a dual-SIM (GSM and GSM) mobile that accepts Nano-SIM and Nano-SIM cards. The Apple iPhone 15 measures 147.60 x 71.60 x 7.80mm (height x width x thickness) and weighs 171.00 grams.",
        ),
        Phone(
          name: 'iPhone 14',
          imageUrl: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-finish-select-202209-6-7inch-starlight?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1661027935971',
          price: 900,
          storageOptions: {
            '256GB': 900.0,
            '512GB': 1000.0,
          },
          colorOptions: ['Gold', 'Silver', 'Black'],
          description: "The iPhone 14 features a 6.1-inch (155 mm) display with Super Retina XDR OLED technology at a resolution of 2532 × 1170 pixels and a pixel density of about 460 PPI with a refresh rate of 60 Hz.",
        ),
        Phone(
          name: 'iPhone 13 pro max',
          imageUrl: 'https://m.media-amazon.com/images/I/61i8Vjb17SL.jpg',
          price: 1000,
          storageOptions: {
            '256GB': 1000.0,
            '512GB': 1200.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: "The iPhone 13 Pro Max is the largest and most expensive model in Apple's 2021 smartphone line-up and features a 6.7-inch Super Retina XDR display with 1284 x 2778 pixels resolution. Like the smaller iPhone 13 Pro, it is powered by Apple's latest A15 Bionic chipset and comes with up to 1TB of internal storage.",
        ),
        Phone(
          name: 'iPhone 12 pro max',
          imageUrl: 'https://m.media-amazon.com/images/I/71MHTD3uL4L.jpg',
          price: 900,
          storageOptions: {
            '256GB': 900.0,
            '512GB': 1100.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: "iPhone 12 Pro Max offers the largest display ever on an iPhone and the highest resolution featuring nearly 3.5 million pixels for a remarkable, true-to-life viewing experience. These OLED displays bring HDR video content to life, reaching 1200 nits peak brightness.",
        ),
        Phone(
          name: 'iPhone 11 pro max',
          imageUrl: 'https://www.sunrise.ch/en/kmu/geraete/handys/apple-iphone-11-pro-max.primaryproductimage.code-MDAwMDAwMDAwMDAwMDIwMTc4.format-hardware-configurator-l.png',
          price: 800,
          storageOptions: {
            '256GB': 800.0,
            '512GB': 1000.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: "The iPhone 11 Pro and 11 Pro Max both have an A13 Bionic processor. Both phones have three internal storage options: 64 GB, 256 GB, and 512 GB, and have 4 GB of RAM. Both models are rated IP68 water and dust resistant, and are resistant for 30 minutes at a depth of 4 meters.",
        ),
        Phone(
          name: 'iPhone 10',
          imageUrl: 'https://photographylife.com/wp-content/uploads/2019/08/iPhone-X.jpg',
          price: 600,
          storageOptions: {
            '256GB': 600.0,
            '512GB': 750.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: "The iPhone X (Roman numeral X pronounced ten) is a smartphone designed, developed and marketed by Apple. It is part of the 11th generation of the iPhone. Available for pre-order from October 27, 2017, it was released on November 3, 2017.",
        ),
      ];}
      if (companyName == 'Samsung') {
        return [
          Phone(
            name: 'S23 Ultra',
            imageUrl: 'https://media-cdn.bnn.in.th/269513/Samsung-Smartphone-Galaxy-S23-Ultra-5G-7-square_medium.jpg',
            price: 1200,
            storageOptions: {
              '128GB': 1200.0,
              '256GB': 1400.0,
            },
            colorOptions: ['Black', 'White', 'Gold'],
            description: 'The Samsung Galaxy S23 Ultra is the headliner of the S23 series. Specifications are top-notch including 6.8-inch Dynamic AMOLED display with 120Hz refresh rate, Snapdragon 8 Gen 2 processor, 5000mAh battery, up to 12gigs of RAM, and 1TB of storage.',
          ),
          Phone(
            name: 'S22 Ultra',
            imageUrl: "https://www.techcrazy.co.nz/cdn/shop/files/Samsung-Galaxy-S22-Ultra-5G-128GB-MP-03645-2_1080x1080.jpg?v=1691367651",
            price: 1100,
            storageOptions: {
              '256GB': 1100.0,
              '512GB': 1300.0,
            },
            colorOptions: ['Purple', 'Silver', 'Blue'],
            description: 'The Samsung Galaxy S22 Ultra is the headliner of the S22 series. Specifications are top-notch including 6.8-inch Dynamic AMOLED display with 120Hz refresh rate, Snapdragon 8 Gen 1 processor, 5000mAh battery, up to 12gigs of RAM',
          ),
          Phone(
            name: 'S21 Ultra',
            imageUrl: 'https://m.media-amazon.com/images/I/61bLefD79-L.jpg',
            price: 900,
            storageOptions: {
              '256GB': 900.0,
              '512GB': 1000.0,
            },
            colorOptions: ['White', 'Silver', 'Blue'],
            description: "The Samsung Galaxy S21 Ultra is the headliner of the S21 series. It's the first S series phone to support Samsung's S Pen. Specifications are top-notch including Snapdragon 888 chipset, 5G capability, up to 16gigs of RAM, and 512GB of storage. A 5000mAh battery keeps the lights on for this powerhouse.",
          ),
          Phone(
            name: 'S20 Ultra',
            imageUrl: 'https://mobileleb.com/cdn/shop/products/samsung-mobile-phone-samsung-galaxy-s20-ultra-12gb-128gb-6-9-dynamic-amoled-2x-display-octa-core-quad-108mp-48mp-4x-optical-zoom-12mp-0-3mp-rear-cam-dual-40mp-selphie-cam-163210809181_grande.jpg?v=1665966971',
            price: 900,
            storageOptions: {
              '256GB': 900.0,
              '512GB': 1000.0,
            },
            colorOptions: ['Gold', 'Silver', 'Black'],
            description: 'Samsung Galaxy S20 Ultra 5G ; Size, 6.9 inches, 114.0 cm2 (~89.9% screen-to-body ratio) ; Resolution, 1440 x 3200 pixels, 20:9 ratio (~511 ppi density).',
          ),
          Phone(
            name: 'S10 plus',
            imageUrl: 'https://www-konga-com-res.cloudinary.com/w_400,f_auto,fl_lossy,dpr_3.0,q_auto/media/catalog/product/L/F/165476_1624617981.jpg',
            price: 500,
            storageOptions: {
              '256GB': 500.0,
              '512GB': 600.0,
            },
            colorOptions: ['Purple', 'Silver', 'Blue'],
            description: 'the Samsung Galaxy S10+ comes with a powerful Snapdragon 855 chip, a glass-and-metal construction, and a fingerprint reader built inside the display. It is bigger, however, meaning that you get a larger, 6.4-inch OLED screen and a larger, 4100mAh battery lasting longer between charges.',
          ),
          Phone(
            name: 'Note 20 Ultra',
            imageUrl: 'https://m.media-amazon.com/images/I/51g3QNsGzKL.jpg',
            price: 900,
            storageOptions: {
              '256GB': 900.0,
              '512GB': 1100.0,
            },
            colorOptions: ['Purple', 'Silver', 'Blue'],
            description: "The device comes in various colors such as Mystic Bronze, Mystic Black, and Mystic White. The smartphone consists of Fingerprint (under display, ultrasonic), accelerometer, gyro, proximity, compass, and barometer sensors. Moreover, it is integrated with Bixby's natural language commands and dictation.",
          ),
          Phone(
            name: 'Z Fold 5',
            imageUrl: 'https://961souq.com/cdn/shop/files/Samsung-Galaxy-Fold-5-Cream-4.jpg?v=1690537173',
            price: 1800,
            storageOptions: {
              '256GB': 1800.0,
              '512GB': 1900.0,
            },
            colorOptions: ['Purple', 'Silver', 'Blue'],
            description: 'The Samsung Galaxy Z Fold5 comes with the following configuration: Display: - Main Display: 7.6-inch Dynamic AMOLED 2X Infinity Flex Display with a resolution of 2208 x 1768 pixels and a 120Hz refresh rate. - Cover Display: 6.2-inch Super AMOLED Display with a resolution of 2268 x 832 pixels and a 120Hz refresh rate.',
          ),
          Phone(
            name: 'Z Flip 5',
            imageUrl: 'https://961souq.com/cdn/shop/files/Samsung-Galaxy-Z-Flip-5-lavender-2.jpg?v=1690791030',
            price: 900,
            storageOptions: {
              '256GB': 900.0,
              '512GB': 1000.0,
            },
            colorOptions: ['Purple', 'Silver', 'Blue'],
            description: "The Galaxy Z Flip 5 has two screens: its foldable inner 6.7-inch display with a 120 Hz variable refresh rate and its 3.4-inch cover display. The device has 8 GB of RAM, and either 256 GB or 512 GB of UFS 4.0 flash storage, with no support for expanding the device's storage capacity via micro-SD cards.",
          ),
        ];}
    if (companyName == 'Xiaomi') {
      return [
        Phone(
          name: 'Xiaomi 13T Pro',
          imageUrl: 'https://i02.appmifile.com/308_operatorx_operatorx_opx/26/09/2023/4796e703846ff6b8afdca74fc2755a10!348x348.png?f=webp',
          price: 1200,
          storageOptions: {
            '128GB': 1200.0,
            '256GB': 1400.0,
          },
          colorOptions: ['Black', 'White', 'Gold'],
          description: 'Xiaomi 13T Pro · Released 2023, September 26 · 200g or 206g, 8.5mm thickness · Android 13, MIUI 14 · 256GB/512GB storage, no card slot.',
        ),
        Phone(
          name: 'Xiaomi 13T',
          imageUrl: "https://i02.appmifile.com/240_operatorx_operatorx_opx/26/09/2023/ee07297cdf24071db7f6846d9c4727bb!348x348.png?f=webp",
          price: 1100,
          storageOptions: {
            '256GB': 1100.0,
            '512GB': 1300.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: 'Xiaomi 13T · Released 2023, September 26 · 200g or 206g, 8.5mm thickness · Android 13, MIUI 14 · 256GB/512GB, no card slot.',
        ),
        Phone(
          name: 'Xiaomi 13 Pro',
          imageUrl: 'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1677427639.01867146!348x348.png?f=webp',
          price: 900,
          storageOptions: {
            '256GB': 900.0,
            '512GB': 1000.0,
          },
          colorOptions: ['White', 'Silver', 'Blue'],
          description: 'Xiaomi 13 Pro ; Chipset, Qualcomm SM8550-AB Snapdragon 8 Gen 2 (4 nm) ; CPU, Octa-core (1x3.2 GHz Cortex-X3 & 2x2.8 GHz Cortex-A715 & 2x2.8 GHz Cortex-A710 & 3x2.',
        ),
        Phone(
          name: 'Xiaomi 13',
          imageUrl: 'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1677427681.17943185!348x348.png?f=webp',
          price: 850,
          storageOptions: {
            '256GB': 850.0,
            '512GB': 1000.0,
          },
          colorOptions: ['Gold', 'Silver', 'Black'],
          description: 'Xiaomi 13 ; Resolution, 1080 x 2400 pixels, 20:9 ratio (~414 ppi density) ; Protection, Corning Gorilla Glass 5 ; OS, Android 13, upgradable to Android 14, MIUI 14.',
        ),
        Phone(
          name: 'Xiaomi 12T Pro',
          imageUrl: 'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1666598561.94078322!348x348.png?f=webp',
          price: 800,
          storageOptions: {
            '256GB': 800.0,
            '512GB': 900.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: 'Xiaomi 12T Pro 5G - Smartphone 8+256GB, 6.67” 120Hz CrystalRes AMOLED Display, Snapdragon 8+ Gen 1, 200MP ultimate Camera, Smart 120W Hypercharge, 5000mAh, Cosmic Black.',
        ),
        Phone(
          name: 'Xiaomi 12T',
          imageUrl: 'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1666598531.28686121!348x348.png?f=webp',
          price: 700,
          storageOptions: {
            '256GB': 700.0,
            '512GB': 800.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: "Xiaomi 12T features a triple camera array: 108MP pro-grade wide angle camera, 8MP ultra-wide camera, and 2MP macro camera, offering professional image quality for everything you shoot. Users can capture mega moments with Xiaomi 12T's professional imaging system backed by OIS for quick, stable, and clean shots.",
        ),
      ];}
    if (companyName == 'Huawei') {
      return [
        Phone(
          name: 'HUAWEI P60 Pro',
          imageUrl: 'https://d1rlzxa98cyc61.cloudfront.net/catalog/product/cache/1801c418208f9607a371e61f8d9184d9/1/8/188058_2023.jpg',
          price: 1200,
          storageOptions: {
            '128GB': 1200.0,
            '256GB': 1400.0,
          },
          colorOptions: ['Black', 'White', 'Gold'],
          description: 'This exquisite smartphone adopts a unique Pearl Texture Design1 that makes it shine through like a timeless ornament, and gives a distinct pattern on each phone with its shimmering Rococo Pearl exterior, letting elegance utterly express every step of the way.',
        ),
        Phone(
          name: 'HUAWEI P50 Pro',
          imageUrl: "https://d1rlzxa98cyc61.cloudfront.net/catalog/product/cache/1801c418208f9607a371e61f8d9184d9/1/8/181010_2020_7.jpg",
          price: 1100,
          storageOptions: {
            '256GB': 1100.0,
            '512GB': 1300.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: 'HUAWEI P50 Pro Specification · Dimensions. Height. 158.8 mm · Display. Size. 6.6 inches · Processor. Snapdragon 888 4G. CPU · Memory. RAM + ROM · Rear Camera. 50 MP',
        ),
        Phone(
          name: 'HUAWEI P40 Pro',
          imageUrl: 'https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/mate30_pro_space_silver.png',
          price: 900,
          storageOptions: {
            '256GB': 900.0,
            '512GB': 1000.0,
          },
          colorOptions: ['White', 'Silver', 'Blue'],
          description: 'HUAWEI P40 Pro 5G smartphone specifications include 50 MP Ultra Vision Main Camera, 40 MP Ultra Wide Cine Camera, 12 MP Telephoto Camera and a 3D Depth',
        ),
        Phone(
          name: 'HUAWEI P30 Pro',
          imageUrl: 'https://refurb-phone.com/cdn/shop/products/huaweip30profrostedsilver.jpg?v=1667840019',
          price: 850,
          storageOptions: {
            '256GB': 850.0,
            '512GB': 1000.0,
          },
          colorOptions: ['Gold', 'Silver', 'Black'],
          description: 'Huawei P30 Pro Android smartphone. Announced Mar 2019. Features 6.47″ display, Kirin 980 chipset, 4200 mAh battery, 512 GB storage, 8 GB RAM.',
        ),
      ];}
    if (companyName == 'Oppo') {
      return [
        Phone(
          name: 'OPPO Find N3',
          imageUrl: 'https://www.giztop.com/media/catalog/product/cache/dc206057cdd42d7e34b9d36e347785ca/i/m/img_1177.jpg',
          price: 1200,
          storageOptions: {
            '128GB': 1200.0,
            '256GB': 1400.0,
          },
          colorOptions: ['Black', 'White', 'Gold'],
          description: 'Say hello to the next generation of foldable phone. The screen might be larger than life, but the "barely there" weight makes it a joy to carry around.',
        ),
        Phone(
          name: 'OPPO Find N3 Flip',
          imageUrl: "https://cdn-files.kimovil.com/default/0009/16/thumb_815050_default_big.jpg",
          price: 1100,
          storageOptions: {
            '256GB': 1100.0,
            '512GB': 1300.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: 'Intuitive and easy-to-use, the cover screen offers a vertical design that mirrors your main screen. Lots of features and shortcuts create the industry’s best cover screen experience.',
        ),
        Phone(
          name: 'Oppo Find X5 Pro',
          imageUrl: 'https://shop.oppomobile.nz/cdn/shop/files/OPPOFindX5Pro5GSideProfile-_1.png?v=1696303728&width=800',
          price: 900,
          storageOptions: {
            '256GB': 900.0,
            '512GB': 1000.0,
          },
          colorOptions: ['White', 'Silver', 'Blue'],
          description: 'Complementing the complexity of OPPO Find X5 Pro’s ceramic body is its durability. With IP68 Water and Dust Resistance¹, you can forge your path without fear of the elements.',
        ),
        Phone(
          name: 'Oppo Find X5',
          imageUrl: 'https://cdn.dxomark.com/wp-content/uploads/medias/post-110454/Oppo-Find-X5_featured-image-packshot-review-Recovered.jpg',
          price: 850,
          storageOptions: {
            '256GB': 850.0,
            '512GB': 1000.0,
          },
          colorOptions: ['Gold', 'Silver', 'Black'],
          description: 'Capture cinematic panoramas and vintage-style photos in the legendary XPan format. Experience the golden age of photography embraced by the future.',
        ),
      ];}
    if (companyName == 'Honor') {
      return [
        Phone(
          name: 'HONOR Magic V2',
          imageUrl: 'https://img02.honorfile.com/eu/uk/honor/pms/product/6936520822799/group/428_428_667383FFF83E32035EE2B95FD940A79469136CC93F31D2CC.png',
          price: 1200,
          storageOptions: {
            '128GB': 1200.0,
            '256GB': 1400.0,
          },
          colorOptions: ['Black', 'White', 'Gold'],
          description: '9.9mm1 in thickness when folded, 4.7mm1 in thickness when unfolded, 231g in weight2. Slimmer and lighter just like holding your bar phone.',
        ),
        Phone(
          name: 'HONOR 90',
          imageUrl: "https://mobileleb.com/cdn/shop/files/honor-mobile-phone-honor-90-5g-19gb-512gb-7gb-turbo-ram-nanosim-esim-120-days-screen-warranty-33556762034308_grande.jpg?v=1698828810",
          price: 1100,
          storageOptions: {
            '256GB': 1100.0,
            '512GB': 1300.0,
          },
          colorOptions: ['Purple', 'Silver', 'Blue'],
          description: "The HONOR 90 exceeds expectations of what a smartphone at its price point should offer. Although sitting comfortably in the mid-range market, it has features we're used to seeing in flagship designs, chief among them a bright and sharp 6.7in 120Hz AMOLED screen.",
        ),

      ];}
   else {
      // For other companies or default case, return an empty list or other relevant data
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Phone> phones = getPhonesRelatedToCompany(companyName);

    return Scaffold(
      appBar: AppBar(
        title: Text("$companyName's phones"), // Show the selected company title
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: phones.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.0,
            child: InkWell(
              onTap: () {
                // Navigate to phone details page when a phone is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhoneDetailsPage(phone: phones[index]),
                  ),
                );
              },
              child: AspectRatio(
                aspectRatio: 3 / 4, // Change the aspect ratio here
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        child: Image.network(
                          phones[index].imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                            return Center(child: Text('Image not available'));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Center(
                        child: Text(
                          phones[index].name,
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
