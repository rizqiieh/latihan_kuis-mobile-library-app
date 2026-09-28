import 'package:flutter/material.dart';
import 'BookModels.dart';
import 'detail_page.dart';

class LibraryPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Buku'),),
      body: ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, index) {
          final book = bookList[index];

          return InkWell(
            onTap: () {
              
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailPage(book: book),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Image.network(
                  book.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, StackTrace) => const Icon(Icons.book, size: 40,),
                ),
                title: Text(book.title, style: const TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('${book.author} . ${book.year}'),
              ),
            ),
          );
        },
      ),
    );
  }
}