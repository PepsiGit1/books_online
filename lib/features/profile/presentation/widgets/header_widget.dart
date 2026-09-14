import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String email;
  final String? avatarUrl;

  const HeaderWidget({super.key, required this.name, required this.email, this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Stack(
            children: [
              CircleAvatar(
                radius: 44,
                backgroundColor: const Color(0xFF3A3A3C),
                child: ClipOval(
                  child:
                      avatarUrl != null && avatarUrl!.isNotEmpty
                          ? CachedNetworkImage(
                            imageUrl: avatarUrl!,
                            width: 88,
                            height: 88,
                            fit: BoxFit.cover,
                            placeholder: (context, url) {
                              return const Center(child: CircularProgressIndicator(strokeWidth: 2));
                            },
                            errorWidget: (context, url, error) {
                              return const Icon(Icons.person, size: 44, color: Colors.white54);
                            },
                          )
                          : const Icon(Icons.person, size: 44, color: Colors.white54),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(name, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          Text(email, style: const TextStyle(color: Colors.white60, fontSize: 14)),
        ],
      ),
    );
  }
}
