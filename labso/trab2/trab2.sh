#!/bin/bash
#Trabalho  de Linux 
#Unilasalle-rj 
#Aluno: Diego Dias. matricula:0050005813 
#Professor: Alex Salgado.

#Faça  um script  shell que exiba  o seguinte 
#menu  e execute as operações abaixo:


clear

menu()
{
# menu de opcão  
echo "Trabalho 2 - Aluno:(Diego Dias)"
echo "Escolha um opção"
echo "[1] Listar conteúdo  da pasta atual"
echo "[2] Ver  conteúdo de um arquivo"
echo "[3] Testar  se uma  url está no ar"
echo "[0] Sair\n"
#*****************************************************************
# leitura de opcao 

read  opcao 
case  $opcao  in 


1)listar;;
2)ver;;
3)testar;;
0)exit;;
*) "Opcao Inexistente";
   clear;
  menu;;
esac
}
# script para  mostra o conteudo  da  pasta atual 
# funcao de  listar conteudo 
listar(){
          

          clear
          echo  "Lista o arquivo  arquivo da pasta atua"
          # COMANDO PARA  LISTA  CONTEUDO 
          ls -l  
          menu
#*******************************************************************
}
#script para   ver conteudo do arquivo 
# função de ver conteudo 
ver(){
         clear 
         echo "Qual  mensagem"
         # MOSTRA  CONTEUDO DO ARQUIVO 
         read cat 
         cat di.txt        

         menu 

}
#script para teste  de url 
# função  para testar   ser a url esta ativa 
testar(){
     
     clear 
     # PING DO  BUSCADOR   YANDEX "
     ping  www.yandex.com -c 1 >/dev/null;

     if [ "$?" = "0" ];
     #testa ser url esta ativa 
     then
       echo  "Url ativa "
     else 
       # restabelecendo a conexao 
        echo "Restabelecendo  a conexão"
        /usr/bin/pon dsl-provider  >/dev/null;
    fi 
   menu  
}
menu
