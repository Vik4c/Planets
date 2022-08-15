class Planet {
  final String id;
  final String name;
  final String location;
  final String distance;
  final String gravity;
  final String description;
  final String image;
  final String picture;

  const Planet(
      {required this.id,
      required this.name,
      required this.location,
      required this.distance,
      required this.gravity,
      required this.description,
      required this.image,
      required this.picture});
}

List<Planet> planets = [
  const Planet(
      id: "1",
      name: "Mercury",
      location: "Milkyway Galaxy",
      distance: "2,440 km",
      gravity: "4 m/s²",
      description:
          "Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 88 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger to the gods.",
      image: "assets/img/mercury.png",
      picture:
          "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg"),
  const Planet(
      id: "2",
      name: "Venus",
      location: "Milkyway Galaxy",
      distance: "108 milion km",
      gravity: "8.87 m/s²",
      description:
          "Venus is the second planet from the Sun and is named after the Roman goddess of love and beauty. As the brightest natural object in Earth's night sky after the Moon, Venus can cast shadows and can be visible to the naked eye in broad daylight.",
      image: "assets/img/venus.png",
      picture:
          "https://www.sciencealert.com/images/articles/processed/2398798725-venus_1024.jpg"),
  const Planet(
      id: "3",
      name: "Earth",
      location: "Milkyway Galaxy",
      distance: "40.07 milion km",
      gravity: "9.8 m/s²",
      description:
          "Earth is the third planet from the Sun and the only object in the Universe known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, Earth's only natural satellite. Earth revolves around the Sun in 365.26 days, a period known as an Earth year. During this time, Earth rotates about its axis about 366.26 times.",
      image: "assets/img/earth.png",
      picture:
          "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/iss042e340851_1.jpg"),
  const Planet(
      id: "4",
      name: "Moon",
      location: "Milkyway Galaxy",
      distance: "400,000 km",
      gravity: "1.625 m/s",
      description:
          "The Moon is an astronomical body that orbits planet Earth, being Earth's only permanent natural satellite. It is the fifth-largest natural satellite in the Solar System, and the largest among planetary satellites relative to the size of the planet that it orbits (its primary). Following Jupiter's satellite Io, the Moon is second-densest satellite among those whose densities are known.",
      image: "assets/img/moon.png",
      picture: "https://farm5.staticflickr.com/4086/5052125139_43c31b7012.jpg"),
  const Planet(
      id: "5",
      name: "Mars",
      location: "Milkyway Galaxy",
      distance: "225 milion km",
      gravity: "3.72 m/s²",
      description:
          "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the 'Red Planet' because the reddish iron oxide prevalent on its surface gives it a reddish appearance that is distinctive among the astronomical bodies visible to the naked eye. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.",
      image: "assets/img/mars.png",
      picture:
          "https://www.nasa.gov/sites/default/files/thumbnails/image/pia21723-16.jpg"),
  const Planet(
      id: "6",
      name: "Jupiter",
      location: "Milkyway Galaxy",
      distance: "778 million km",
      gravity: "24.79 m/s²",
      description:
          "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, but slightly less than one-thousandth the mass of the Sun. Jupiter is the third brightest natural object in the Earth's night sky after the Moon and Venus, and it has been observed since prehistoric times.",
      image: "assets/img/jupiter.png",
      picture:
          "https://i1.wp.com/sparkastrology.com/wp-content/uploads/2018/11/Spark-Astrology-Jupiter.jpg?fit=2464%2C1478&ssl=1"),
  const Planet(
      id: "7",
      name: "Saturn",
      location: "Milkyway Galaxy",
      distance: "1.2 billion km",
      gravity: "10.44 m/s²",
      description:
          "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth. It has only one-eighth the average density of Earth. However, with its larger volume, Saturn is over 95 times more massive.",
      image: "assets/img/saturn.png",
      picture:
          "https://th.bing.com/th/id/OIP.O3Xdn2n2afSVeCf0ePK9owHaD7?pid=ImgDet&rs=1"),
  const Planet(
      id: "8",
      name: "Uranus",
      location: "Milkyway Galaxy",
      distance: "2.9 billion km",
      gravity: "8.69 m/s²",
      description:
          "Uranus is the seventh planet from the Sun. Its name is a reference to the Greek god of the sky, Uranus, who, according to Greek mythology, was the great-grandfather of Ares (Mars), grandfather of Zeus (Jupiter) and father of Cronus (Saturn). It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System.Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn. For this reason, scientists often classify Uranus and Neptune as ice giants to distinguish them from the other giant planets.",
      image: "assets/img/uranus.png",
      picture:
          "https://lovethenightsky.com/wp-content/uploads/2020/12/image-3-768x767.jpeg"),
  const Planet(
      id: "9",
      name: "Neptune",
      location: "Milkyway Galaxy",
      distance: "4.5 billion km",
      gravity: "11.15 m/s²",
      description:
          "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth and is slightly more massive than its near-twin Uranus, which is 15 times the mass of Earth and slightly larger than Neptune. Neptune orbits the Sun once every 164.8 years at an average distance of 30.1 astronomical units (4.50×109 km). It is named after the Roman god of the sea and has the astronomical symbol ♆, a stylised version of the god Neptune's trident",
      image: "assets/img/neptune.png",
      picture:
          "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/images/110411main_Voyager2_280_yshires.jpg"),
  const Planet(
      id: "10",
      name: "Pluto",
      location: "Milkyway Galaxy",
      distance: "7.5 billion km",
      gravity: "0.58 m/s²",
      description:
          "Pluto (minor-planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It was the first object discovered in the Kuiper belt and remains the largest known body in that area. After Pluto was discovered in 1930, it was declared the ninth planet from the Sun. However, beginning in the 1990s, its status as a planet was questioned following the discovery of several objects of similar size in the Kuiper belt and the scattered disc, including the dwarf planet Eris, leading the International Astronomical Union (IAU) in 2006 to define the term planet formally—excluding Pluto and reclassifying it as a dwarf planet.",
      image: "assets/img/pluto.png",
      picture:
          "https://th.bing.com/th/id/OIP.yTskLI8Kpz3fkIdIVmaeFAHaHa?pid=ImgDet&rs=1"),
];
