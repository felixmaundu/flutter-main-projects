import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project9/screens/ProfileScreen.dart';
import 'package:project9/screens/addPost_screen.dart';
import 'package:project9/screens/feed_screen.dart';
import 'package:project9/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  FeedScreen(),
  const SearchScreen(),
  AddPostScreen(),
  const Text('notifications'),
  ProfileScreen(
      //uid: FirebaseAuth.instance.currentUser!.uid,
      ),
];

// // Import the functions you need from the SDKs you need
// import { initializeApp } from "firebase/app";
// import { getAnalytics } from "firebase/analytics";
// // TODO: Add SDKs for Firebase products that you want to use
// // https://firebase.google.com/docs/web/setup#available-libraries

// // Your web app's Firebase configuration
// // For Firebase JS SDK v7.20.0 and later, measurementId is optional
// const firebaseConfig = {
//   apiKey: "AIzaSyAIsZSqFJoZfWhzVHGZ2qkPCcZ4bWtef_k",
//   authDomain: "project9-instagram.firebaseapp.com",
//   projectId: "project9-instagram",
//   storageBucket: "project9-instagram.appspot.com",
//   messagingSenderId: "525866571048",
//   appId: "1:525866571048:web:8117a62d9e515a253fac1d",
//   measurementId: "G-5N3PT9Z2M4"
// };

// // Initialize Firebase
// const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);