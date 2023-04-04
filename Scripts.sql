1 - Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos.

select profissao, count(*) from alunos
group by profissao;

2 - Quantos alunos homens e quantas mulheres nasceram após 01/jan/2005.

select sexo, count(*) from alunos
where nascimento > '2005-01-01'
group by sexo;

3 - Uma lista com os alunos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. 
Só nos interessam os paises que tiverem mais de 3 alunos com essa nacionalidade.

select nacionalidade, count(*) from alunos
where nacionalidade <> 'Brasil'
grupy by nacionalidade
having count(*) > 3;

4 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100Kg e que estão acima da média de altura de todos os cadastros:


select count(*) from alunos
where peso > 100 
group by altura
having altura > (select AVG(altura) from alunos);
