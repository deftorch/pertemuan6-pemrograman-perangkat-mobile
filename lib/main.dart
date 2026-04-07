import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    home: BookListScreen(),
  ));
}

class BookListScreen extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      'title': 'Algorithms to Live By: The Computer Science of Human Decisions',
      'author': 'Brian Christian',
      'description': 'Algorithms to Live By transforms the wisdom of computer science into strategies for human living.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Beginning Programming All-in-One Desk Reference for Dummies',
      'author': 'Wallace Wang',
      'description': 'Beginning Programming All In One Desk Reference For Dummies shows you how to decide what you want your program to do.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Streamlit for Data Science',
      'author': 'Tyler Richards',
      'description': 'Create and deploy data apps quickly, all within Python.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'The Pragmatic Programmer',
      'author': 'Andrew Hunt',
      'description': 'A book about software engineering.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Clean Code',
      'author': 'Robert C. Martin',
      'description': 'A Handbook of Agile Software Craftsmanship.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Design Patterns',
      'author': 'Erich Gamma',
      'description': 'Elements of Reusable Object-Oriented Software.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Refactoring',
      'author': 'Martin Fowler',
      'description': 'Improving the Design of Existing Code.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Code Complete',
      'author': 'Steve McConnell',
      'description': 'A Practical Handbook of Software Construction.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Introduction to Algorithms',
      'author': 'Thomas H. Cormen',
      'description': 'A comprehensive study of algorithms.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Head First Design Patterns',
      'author': 'Eric Freeman',
      'description': 'A Brain-Friendly Guide.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book List')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index]['title']!),
            subtitle: Text(books[index]['author']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(
                    title: books[index]['title']!,
                    author: books[index]['author']!,
                    description: books[index]['description']!,
                    pdfUrl: books[index]['pdfUrl']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class BookDetailScreen extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String pdfUrl;

  BookDetailScreen({
    required this.title,
    required this.author,
    required this.description,
    required this.pdfUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: $title', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Author: $author', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            SizedBox(height: 12),
            Text('Description:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 6),
            Text(description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadingBookFile(
                          pdfUrl: pdfUrl,
                          title: title,
                        ),
                      ),
                    );
                  },
                  child: Text('Read the book'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReadingBookFile extends StatelessWidget {
  final String pdfUrl;
  final String title;

  ReadingBookFile({required this.pdfUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SfPdfViewer.network(pdfUrl),
    );
  }
}