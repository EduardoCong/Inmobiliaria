import 'package:flutter/material.dart' show Color;

class AccountsState {
  final String title, description, iconSrc;
  final Color color;

  AccountsState({
    required this.title,
    this.description = 'Build and animate an iOS app from scratch',
    this.iconSrc = "assets/icons/ios.svg",
    this.color = const Color(0xFF7553F6),
  });
}

final List<AccountsState> accountsStates = [
  AccountsState(
    title: "Animations in SwiftUI",
  ),
  AccountsState(
    title: "Animations in Flutter",
    iconSrc: "assets/icons/code.svg",
    color: const Color(0xFF80A4FF),
  ),
];

final List<AccountsState> recentAccountsStates = [
  AccountsState(title: "State Machine"),
  AccountsState(
    title: "Animated Menu",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
  AccountsState(title: "Flutter with Rive"),
  AccountsState(
    title: "Animated Menu",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
];
