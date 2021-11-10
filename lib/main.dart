import 'package:flutter/material.dart';
import 'Aluno.dart';
void main(){
  runApp( CadastroAlunos() );
}

class CadastroAlunos extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorMatricula = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de aluno"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorNome,
                decoration: InputDecoration(
                    labelText: "Nome"
                ),
              ),
            ),


            TextField(
              controller: _controladorEmail,
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Email"
              ),
            ),
            TextField(
              controller: _controladorMatricula,
              decoration: InputDecoration(
                  labelText: "Matricula"
              ),
            ),
            TextField(
              controller: _controladorSenha,
              decoration: InputDecoration(
                  labelText: "Senha"

              ),
              obscureText: true,
            ),
            RaisedButton(
              child: Text("Cadastrar"),
              onPressed: (){
                String nome = _controladorNome.text;
                String email = _controladorEmail.text;
                String matricula = _controladorMatricula.text;
                String senha = _controladorSenha.text;

                if( nome.isEmpty && email.isEmpty && matricula.isEmpty && senha.isEmpty ){
                  print("Por favor preencha os campos!");
                }else if( !email.contains("@") ){
                  print("Por favor digite um email válido!");
                }else if( senha.length < 6 ){
                  print("Senha menor que seis caracteres!");
                }else{
                  Aluno aluno = Aluno(nome,email, matricula, senha);
                  print("Aluno cadastrado!");
                }


              },
            )

          ],
        )
      ),
    );
  }
}
