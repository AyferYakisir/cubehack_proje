import 'dart:ffi';

import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:disney_plus_clone/models/categories.dart';
import 'package:disney_plus_clone/constants.dart';
import 'package:disney_plus_clone/models/movie.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Movie>> oneCikanFilmler() async {
    var oneCikanFilmler = <Movie>[];
    var f1 = Movie(
        id: 1,
        imagePath: "images/movies/deadpool_wolwerine.png",
        movieName: "Deadpool & Wolwerine");
    var f2 = Movie(
        id: 2, imagePath: "images/movies/deadpool.png", movieName: "Deadpool");
    var f3 = Movie(
        id: 3,
        imagePath: "images/movies/deadpool2.png",
        movieName: "Deadpool 2");
    var f4 = Movie(
        id: 4, imagePath: "images/movies/inside.png", movieName: "İnside");
    var f5 = Movie(
        id: 5,
        imagePath: "images/movies/maymunlar_cehennemi.png",
        movieName: "Maymunlar Cehennemi");
    var f6 = Movie(
        id: 6,
        imagePath: "images/movies/prison_break.png",
        movieName: "Prison Break");
    var f7 = Movie(
        id: 7,
        imagePath: "images/movies/skeleton_crew.png",
        movieName: "Skeleton Crew");

    oneCikanFilmler.add(f1);
    oneCikanFilmler.add(f2);
    oneCikanFilmler.add(f3);
    oneCikanFilmler.add(f4);
    oneCikanFilmler.add(f5);
    oneCikanFilmler.add(f6);
    oneCikanFilmler.add(f7);

    return oneCikanFilmler;
  }

  Future<List<Categories>> kategoriler() async {
    var kategoriler = <Categories>[];
    var disney = Categories(id: 1, imagePath: "images/categories/disney.png");
    var pixar = Categories(id: 2, imagePath: "images/categories/pixar.png");
    var marvel = Categories(id: 1, imagePath: "images/categories/marvel.png");
    var starWars =
        Categories(id: 1, imagePath: "images/categories/star_wars.png");
    var national =
        Categories(id: 1, imagePath: "images/categories/national.png");

    kategoriler.add(disney);
    kategoriler.add(pixar);
    kategoriler.add(marvel);
    kategoriler.add(starWars);
    kategoriler.add(national);

    return kategoriler;
  }

  Future<List<Movie>> filmler() async {
    var filmler = <Movie>[];
    var f1 = Movie(
        id: 1,
        imagePath: "images/movies/deadpool_wolwerine.png",
        movieName: "Deadpool & Wolwerine");
    var f2 = Movie(
        id: 2, imagePath: "images/movies/deadpool.png", movieName: "Deadpool");
    var f3 = Movie(
        id: 3,
        imagePath: "images/movies/deadpool2.png",
        movieName: "Deadpool 2");
    var f4 = Movie(
        id: 4, imagePath: "images/movies/inside.png", movieName: "İnside");
    var f5 = Movie(
        id: 5,
        imagePath: "images/movies/maymunlar_cehennemi.png",
        movieName: "Maymunlar Cehennemi");
    var f6 = Movie(
        id: 6,
        imagePath: "images/movies/prison_break.png",
        movieName: "Prison Break");
    var f7 = Movie(
        id: 7,
        imagePath: "images/movies/skeleton_crew.png",
        movieName: "Skeleton Crew");
    var f8 = Movie(
        id: 8, imagePath: "images/movies/murder.png", movieName: "Murder");
    var f9 = Movie(
        id: 9, imagePath: "images/movies/shogun.png", movieName: "Shogun");
    var f10 = Movie(
        id: 10, imagePath: "images/movies/station.png", movieName: "Station");
    var f11 = Movie(
        id: 11, imagePath: "images/movies/wrexham.png", movieName: "Wrexham");
    var f12 = Movie(
        id: 12,
        imagePath: "images/movies/shardlake.png",
        movieName: "Shardlake");
    var f13 =
        Movie(id: 13, imagePath: "images/movies/vouge.png", movieName: "Vouge");
    var f14 =
        Movie(id: 14, imagePath: "images/movies/bones.png", movieName: "Bones");
    var f15 = Movie(
        id: 15,
        imagePath: "images/movies/deadpool.png",
        movieName: "Skeleton Crew");

    filmler.add(f1);
    filmler.add(f2);
    filmler.add(f3);
    filmler.add(f4);
    filmler.add(f5);
    filmler.add(f6);
    filmler.add(f7);
    filmler.add(f8);
    filmler.add(f9);
    filmler.add(f10);
    filmler.add(f11);
    filmler.add(f12);
    filmler.add(f13);
    filmler.add(f14);
    filmler.add(f15);

    return filmler;
  }

  int _selectedIndex = 0; // Seçili olan sekme

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Image.asset(
              'images/Disney_Plus_logo.svg.png',
              width: 100,
              height: 50,
            ),
            centerTitle: true,
            backgroundColor: themeColor,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.connected_tv,
                  color: white,
                ),
              ),
            ],
            floating: true,
            snap: true,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [themeColor, themeColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [themeColor, themeColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  highlights(),
                  const SizedBox(height: 10),
                  categories(),
                  const SizedBox(height: 10),
                  const Text(
                    "Disney+'ta Yeni",
                    style: TextStyle(
                        fontFamily: proxima,
                        fontWeight: FontWeight.w400,
                        color: white,
                        fontSize: 15),
                  ),
                  const SizedBox(height: 15),
                  movies(),
                  const SizedBox(height: 15),
                  const Text(
                    "Bu Akşam İzlemek İsteyebileceklerin",
                    style: TextStyle(
                      fontFamily: proxima,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: white,
                    ),
                  ),
                  const SizedBox(height: 15),
                  tonightMovies(),
                  const SizedBox(height: 15),
                  const Text(
                    "Disney+'ta Yeni",
                    style: TextStyle(
                        fontFamily: proxima,
                        fontWeight: FontWeight.w400,
                        color: white,
                        fontSize: 15),
                  ),
                  const SizedBox(height: 15),
                  movies(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigator(),
    );
  }

  BottomNavigationBar bottomNavigator() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: themeColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.download),
          label: 'Downloads',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 12,
            backgroundImage: AssetImage('images/profile.png'), // Profil resmi
          ),
          label: 'Profile',
        ),
      ],
    );
  }

  FutureBuilder<List<Categories>> categories() {
    return FutureBuilder(
      future: kategoriler(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Hata: ${snapshot.error}"));
        } else if (snapshot.hasData) {
          var kategoriler = snapshot.data!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.130, // Yüksekliği ayarlayın
                child: GridView.builder(
                  itemCount: kategoriler.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    childAspectRatio: 0.9 / 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      margin: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          kategoriler[index].imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return const Center(child: Text("Hiçbir veri bulunamadı."));
        }
      },
    );
  }

  FutureBuilder<List<Movie>> highlights() {
    return FutureBuilder<List<Movie>>(
      future: oneCikanFilmler(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Hata: ${snapshot.error}"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("Film bulunamadı"));
        }

        final movies = snapshot.data!;

        return CarouselSlider(
          options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlay: true,
          ),
          items: movies.map((movie) {
            return Builder(
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        movie.imagePath,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 1,
                      ),
                    ),
                  ],
                );
              },
            );
          }).toList(),
        );
      },
    );
  }

  FutureBuilder<List<Movie>> movies() {
    return FutureBuilder<List<Movie>>(
      future: filmler(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Hata: ${snapshot.error}"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("Film bulunamadı"));
        }

        final movies = snapshot.data!;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: movies.map((movie) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(movie.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  FutureBuilder<List<Movie>> tonightMovies() {
    return FutureBuilder<List<Movie>>(
      future: filmler(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Hata: ${snapshot.error}"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("Film bulunamadı"));
        }

        final movies = snapshot.data!;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: movies.map((movie) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(movie.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
