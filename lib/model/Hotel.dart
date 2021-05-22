class Hotel {
  String name;
  String location;
  double rating;
  String description;
  int price;
  String imgAsset;

  Hotel(
      {this.name,
      this.location,
      this.rating,
      this.description,
      this.price,
      this.imgAsset});
}

var hotelList = [
  Hotel(
      name: "GCA2 Apartment",
      location: "Cidadap, Bandung, Jawa Barat",
      rating: 4.8,
      description:
          "Enjoy your journey in cozy unit at Gateway Pasteur Apartment the nearest from Pasteur Toll road, 5’ from Husein Sastranegara international Airport, Nice room with newest interior fully furnished, 1 Bedroom, sofa and AC, TV Cable with home theater. Kitchen Set, refrigerator for your meals. Clean and tidy bathroom with Water Heater.",
      price: 1200000,
      imgAsset: "images/gca2_apartment.jpg"),
  Hotel(
      name: "La Grande Merdeka",
      location: "Bandung, Jawa Barat, Indonesia",
      rating: 4.7,
      description:
          "Studio unit at Apartment La Grande Merdeka, with City and Mountain View. Located at the heart of Bandung city, next to Bandung Indah Plaza mall and Bandung Electronic Center. Just 5 minutes drive to Jalan Dago and Jalan Riau where most of Factory Outlets and Restaurants/Cafes are located. The apartment is behind Best Western La Grande Hotel, which is only 4.5 km from the Airport and 1.6 km from Train Station.",
      price: 700000,
      imgAsset: "images/lagrandemerdeka.jpg"),
  Hotel(
      name: "Galeri Ciumbuleuit",
      location: "Bandung, Jawa Barat, Indonesia",
      rating: 4.52,
      description:
          "This beautiful 2 bedrooms apartment comes with a queen sized-bed, a single sized-bed, and sofa bed. The unit is located at corner, more fresh air circulation, able to host up to 7 guests. Amazing view of Bandung and tangkuban perahu mountain view , fresh air. Complete Facilities, Swimming Pool, Gym, Food Court, Billiard, Table Tenis, Basket Ball Court, Sky Garden (on 26th Floor), Indomaret, Alfamart, Laundry.",
      price: 800000,
      imgAsset: "images/galeri_ciumbuleuit.jpg"),
  Hotel(
      name: "Dago Suite",
      location: "Coblong, Jawa Barat, Indonesia",
      rating: 4.48,
      description:
          "Welcome to Midsommar Home. It is located in the city centre of Bandung at Dago Suite Apt Building 11th floor. The design of this apt is inspired by hygge concept which are mix of cosiness, charm, comfort, kinship and simpleness with the touch of the colors of the scandinavian midsommar sky. It fits perfectly up to four people who seek a perfect getaway vacation.",
      price: 1100000,
      imgAsset: "images/dago_suite.jpg"),
  Hotel(
      name: "Grand Parahyangan",
      location: "Bandung, Jawa Barat, Indonesia",
      rating: 4.48,
      description:
          "Rumah ini sangat nyaman dipakai, mempunya udara yang sejuk karena terletak diatas kota bandung. Dekorasi yang nyaman dan bagus membuat keluarga anda nyaman tinggal disini",
      price: 700000,
      imgAsset: "images/grand_parahyangan.jpg"),
  Hotel(
      name: "Grand Padma",
      location: "Bandung, Jawa Barat, Indonesia",
      rating: 4.3,
      description:
          "The place is very nice, suitable for a family of 5 to 7, and appliances are complete for daily activities. However, you have to make sure the cleanliness of all areas and the stove working properly. We quite disappointed on how the co-host communicate with us.",
      price: 1200000,
      imgAsset: "images/grand_padma.jpg"),
];
