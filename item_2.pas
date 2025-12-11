program item_2;

//Uma empresa quer verificar se um empregado está qualificado para a aposentadoria ou não.
//Para estar em condições, um dos seguintes requisitos deve ser satisfeito:
//ter no mínimo 65 anos de idade;
//• ter trabalhado no mínimo 30 anos;
//• ter no mínimo 60 anos e ter trabalhado no mínimo 25 anos.
//Com base nas informações acima, faça um algoritmo que leia o número do empregado (código),
//o ano de seu nascimento e o ano de seu ingresso na empresa. O programa deverá escrever a
//idade e o tempo de trabalho do empregado e a mensagem “Requerer aposentadoria” ou “Não
//requerer aposentadoria”.
var
   matricula, nome, op : string;
   ano, nasci, q1, q2: integer;

begin

Writeln('');
     Writeln('╔══════════════════════════════════════╗');
     Writeln('║           Calculadora de             ║');
     Writeln('║     aposentadoria. Versão 1.0        ║');
     Writeln('╚══════════════════════════════════════╝');
     repeat
  Writeln('-----------------------------------------');
  Writeln('Bom dia! Esse programa verificará se você está apto a se aposentar');
  Writeln('-----------------------------------------');

  Writeln('Digite seu nome completo: ');
  readln(nome);

  Writeln('-----------------------------------------');
  Writeln('Digite o número da sua matrícula: ');
  readln(matricula);

  Writeln('-----------------------------------------');

  Writeln('Digite o ano do seu nascimento: ');
  readln(nasci);
  Writeln('-----------------------------------------');

  Writeln('Digite seu ano de entrada na empresa: ');
  readln(ano);
  Writeln('-----------------------------------------');
  //bloco de avaliação dos critérios
          q1 := (2025-nasci); //verifica a idade
          q2 := (2025-ano);   //verifica o tempo de trabalho
  Writeln('Olá, ', nome,', matrícula ', matricula, '.');

  if (q1 >= 65) OR (q2 >= 30) OR ((q1 >=60) AND (q2 >=25))
  then
  begin
          Writeln('-----------------------------------------');
          Writeln('Você tem no momento, ', q1, ' anos.');
          Writeln('Requerer aposentadoria');
          Writeln('-----------------------------------------');
          Writeln('Deseja verificar novamente?: ');
          readln(op);
  end
        else
            begin
             Writeln('-----------------------------------------');
             Writeln('Não requerer aposentadoria.');
              Writeln('-----------------------------------------');
              writeln('Deseja verificar novamente?: ');
              readln(op);
  end;

until (op = 'n') OR (op = 'N');


Writeln('-----------------------------------------');
Writeln('Tenha um excelente dia!');
Writeln('-----------------------------------------');

end.



