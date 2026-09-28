import 'package:flutter/material.dart';
import 'BookModels.dart';

class BookDetailPage extends StatelessWidget {
  final BookModel book;

  const BookDetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                book.imageUrl,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.book, size: 100),
              ),
            ),
            const SizedBox(height: 16),
            Text(book.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            const SizedBox(height: 8,),
            Text('Penulis: ${book.author}', style: const TextStyle(fontSize: 16),),
            Text('Tahun Terbit: ${book.year}', style: const TextStyle(fontSize: 16),),
            Text('Genre: ${book.genre}', style: const TextStyle(fontSize: 16),),
            Text('Penerbit: ${book.publisher}', style: const TextStyle(fontSize: 16),),
            Text('Halaman: ${book.pages}', style: const TextStyle(fontSize: 16),),
            Text('Rating: bintang ${book.rating}', style: const TextStyle(fontSize: 16),),
            const SizedBox(height: 16,),
            const Text('Sinopsis', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            const SizedBox(height: 8,),
            Text(book.description, style: const TextStyle(fontSize: 14, height: 1.5),),
          ],
        ),
      ),
    );
  }
}