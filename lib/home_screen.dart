import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This makes the screen scrollable to avoid errors on smaller devices.
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Adds some space at the top.
          const SizedBox(height: 20),

          // Requirement: Display a travel image.
          const Image(
            image: AssetImage('assets/images/eiffel_tower.jpg'),
            height: 200,
            fit: BoxFit.cover,
          ),

          // Adds some space between the image and the container.
          const SizedBox(height: 20),

          // Requirement: Add a short welcome message inside a Container.
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blueAccent,
            child: const Text(
              'Welcome to the Travel Guide App! Your adventure starts here.',
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),

          // Adds some space.
          const SizedBox(height: 30),

          // Requirement: Use RichText to display a travel slogan.
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 24, color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: 'Explore the World '),
                TextSpan(
                  text: 'with Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ),

          // Adds some padding around the text field and buttons.
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Requirement: Add a TextField for entering a destination.
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter a destination',
                    hintText: 'e.g., Paris, Tokyo, Rome',
                  ),
                ),
                const SizedBox(height: 20),

                // A Row to place buttons side-by-side.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Requirement: Include an ElevatedButton.
                    ElevatedButton(
                      onPressed: () {
                        print('Search button pressed!');
                      },
                      child: const Text('Search'),
                    ),

                    // Requirement: Include a TextButton.
                    TextButton(
                      onPressed: () {
                        print('Explore button pressed!');
                      },
                      child: const Text('Explore More'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}