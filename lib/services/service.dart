// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiService {
//   final String baseUrl = 'http://localhost:8000/api';


//   Future<List<Post>> getPosts() async {
//     final response = await http.get(Uri.parse('$baseUrl'));
//     if (response.statusCode == 200) {
//       Iterable list = json.decode(response.body);
//       return list.map((model) => Post.fromJson(model)).toList();
//     } else {
//       throw Exception('Failed to load posts');
//     }
//   }

//   Future<Post> createPost(Post post) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/posts'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(post.toJson()),
//     );
//     if (response.statusCode == 201) {
//       return Post.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed to create post');
//     }
//   }

//   Future<Post> updatePost(Post post) async {
//     final response = await http.put(
//       Uri.parse('$baseUrl/posts/${post.id}'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(post.toJson()),
//     );
//     if (response.statusCode == 200) {
//       return Post.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed to update post');
//     }
//   }

//   Future<void> deletePost(int id) async {
//     final response = await http.delete(Uri.parse('$baseUrl/posts/$id'));
//     if (response.statusCode != 204) {
//       throw Exception('Failed to delete post');
//     }
//   }
// }
