program item_04;

//Uma escola deseja automatizar o cálculo da média das notas dos alunos em uma disciplina.
//Escreva um algoritmo em Pascal que:
//Leia a quantidade de alunos da turma;
//Para cada aluno, leia suas duas notas (N1 e N2);
//Calcule a média aritmética das notas de cada aluno;
//Ao final, mostre a quantidade de alunos aprovados (média ≥ 7.0) e a quantidade de alunos
//reprovados (média < 7.0)
var
  turma, op, nome : string;
  n1, n2, media : real;
  qt, aprovados,reprovados, i : integer;
begin
  Writeln('');
     Writeln('╔══════════════════════════════════════╗');
     Writeln('║        Calculadora  de médias,       ║');
     Writeln('║        aprovações e reprovações.     ║');
     Writeln('║            Versão 1.0                ║');
     Writeln('╚══════════════════════════════════════╝');

repeat //função que vai repetir o programa até o usuário apertar N

  Writeln('Bom momento! Primeiramente, digite o nome da disciplina: ');
  readln(turma);

  Writeln('Digite a quantidade de alunos: ');
  readln(qt);

  aprovados:=0;
  reprovados:=0;

  for i:=1 to qt do //laço que vai contar até o tamanho das turmas
      begin
      writeln('Insira o nome do aluno: ');
      readln(nome);
      repeat //validação para repetir a pergunta caso o usuário insira valores maiores ou menores que 10
      writeln('Insira a primeira nota: ');
      readln(n1);
      if (n1<0) or (n1>10) then
         writeln('Valor inválido. Digite novamente.');
      until (n1>=0) and (n1<=10);

      repeat
      writeln('Insira a segunda nota: ');
      readln(n2);
      if (n2<0) or (n2>10) then
         writeln('Valor inválido. Digite novamente.');
      until (n2>=0) and (n2<=10);


media:= (n1+n2)/2;//cálculo da média

  if media >= 7 then
     begin
     Writeln('════════════════════════════════════════════════════');
     writeln(nome, ' está aprovado(a) na disciplina de ', turma,'.');
     Writeln('════════════════════════════════════════════════════');
     aprovados:=aprovados+1;
     end
     else
     begin
     Writeln('════════════════════════════════════════════════════');
     writeln(nome, ' está reprovado(a) na disciplina de ', turma,'.');
     Writeln('════════════════════════════════════════════════════');
     reprovados:=reprovados+1;
     end;
     end;

if aprovados > 1 then //opções para quando houver apenas um aluno aprovado
   begin
   Writeln('════════════════════════════════════════════════════');
   writeln('A disciplina de ', turma, ' teve ', aprovados, ' alunos aprovados.');
   end
   else
   begin
   Writeln('════════════════════════════════════════════════════');
   writeln('A disciplina de ', turma, ' teve ', aprovados, ' aluno aprovado.');
   end;

if reprovados > 1 then //opções para quando houver apenas um aluno reprovado
   begin
   writeln('e ', reprovados, ' alunos reprovados.');
   Writeln('════════════════════════════════════════════════════');
   end
   else
   begin
   writeln('e ', reprovados, ' aluno reprovado.');
   Writeln('════════════════════════════════════════════════════');
   end;

writeln('Deseja calcular as notas de outra turma?S/N: ');
readln(op);

until (op='n') OR (op='N');


end.

