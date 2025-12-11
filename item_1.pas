program item_1;
//Escrever um algoritmo que leia o nome de um vendedor, o seu salário fixo e o valor total
//das vendas efetuadas por ele. Sabendo que ele ganha 15% de de comissão sobre suas vendas
//efetuadas, informar o seu nome, o salário fixo e salário no final do mês.
var
   nome, op, mes : string[20];
   salario_fixo : real;
   vendas_total : real;
   comissao : real;
   salario_comissao : real;

begin

repeat

   writeln('Olá! Vamos calcular o valor da sua comissão do mês.');

   writeln('Insira o seu nome completo: ');
   readln(nome);

   writeln('Digite o valor do seu salário sem vírgula: ');
   readln(salario_fixo);

   writeln('Digite o nome do mês das vendas: ');
   readln(mes);


   writeln('Digite o total de vendas do mês, sem vírgula: ');
   readln(vendas_total);

   comissao :=(vendas_total*0.15);
   salario_comissao :=(salario_fixo+(vendas_total*0.15));

writeln('-----------------------------------------------------------');
   writeln('Olá,', nome, '!');
   writeln('Seu salário atual é de R$ ', salario_fixo:0:2, '.');
   writeln('No mês de ', mes,' você vendeu um total de R$ ', vendas_total:0:2, '.');
   writeln('Logo, sua comissão de 15% foi: ', comissao:0:2, '.');
   writeln('Seu salário total será de R$: ', salario_comissao:0:2, '.');

writeln('-----------------------------------------------------------');
   writeln('Quer calcular o salário e comissão de outra pessoa?');
   readln(op);

until (op='n') or (op='N');

      writeln('Tenha um bom dia e boas vendas!');

end.

