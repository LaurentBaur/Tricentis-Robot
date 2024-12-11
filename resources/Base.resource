*** Settings ***
Documentation    Base da automação site Tricentis    

#Extensão pra poder chamar os metodos
Resource    ../resources/FormularioAutomobile.resource

#Biblioteca 
Library    Browser
#Keywords representa as palavras chaves
*** Keywords *** 

Iniciar Teste
    New Browser    chromium     headless=False
    New Page    https://sampleapp.tricentis.com/101/index.php

Finalizar Teste
    Take Screenshot
    Close Browser    