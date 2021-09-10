# Exercicio Devops Academy

Aplicacão de exemplo: [spring-petclinic](https://github.com/spring-projects/spring-petclinic)

## Gerando War da aplicacão

No pom.xml, insira a seguinte tag para gerar o war da aplicacão

```xml
<packaging>war<packaging>
```

E rode o comando para a geracão do mesmo

```bash
mvn package
```

## Notas

- Pelos exemplos da documentacão do Tomcat e exemplos do stackoverflow não soube fazer executar o war
  dentro do Tomcat e não soube se essa seria a forma certa.
- As imagens não são adequadas para uso de producão por não limitar o suficiente o uso do usuário no container,
  utilizando então comandos como _chown_ e estarem como _root_ da aplicacão e não como _user_.
