import '../models/chuck_norris_model.dart';
import '../models/pokemon1.dart';
import '../models/posts.dart';
import 'package:http/http.dart' as http;


class RemoteService
{
  Future<List<Posts>?> getPosts() async{
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
     var response = await client.get(uri);
     if(response.statusCode == 200){
       var json = response.body;
       return postsFromJson(json);
     }
     return null;
  }

  Future<Pokemon1?> getPokemon1() async{
    var client = http.Client();

    var uri = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0');
    var response = await client.get(uri);
    if(response.statusCode == 200){
      var json = response.body;
      return pokemon1FromJson(json);
    }
    return null;
  }

  Future<ChuckNorris?> getChuckNorrisJoke(uriv) async{
    var client = http.Client();

    var uri = Uri.parse(uriv);
    var response = await client.get(uri);
    if(response.statusCode == 200){
      var json = response.body;
      return chuckNorrisFromJson(json);
    }
    return null;
  }


}

