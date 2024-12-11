*** Settings ***
Documentation    Preencher formulário Automobile
#A resource vai importar todos os arquivos da Base.resource para acessar os metodos e funções comuns
Resource    ../resources/Base.resource  


Test Setup       Iniciar Teste
Test Teardown    Finalizar Teste

*** Variables ***
#Vehicule Data
${Make}                    Audi
${Performance }            222
${Manufacture}             06/11/2024
${Seats}                   5 
${Fuel_Type}               Petrol 
${List_Price }             22222 
${License_Plate_Number}    ADE1972GER
${Annual_Mileage}          225 

#Insurance Data
${First_Name}        Laurent    
${Last_Name}         Baur
${Date_of_Birth}     06/07/1972 
${Street_Address}    Hauptstrasse 189    
${Country}           Germany   
${Zip_Code}          53518   
${City}              Adenau   
${Occupation}        Employee    
${Website}           https://sampleapp.tricentis.com/101/app.php 

#Product Data 
${Start_Date}          01/13/2025   
${Insurance_Sum}       3.000.000,00    
${Merit_Rating}        Bonus 6    
${Damage_Insurance}    Partial Coverage 
${Courtesy_Car}        No 

#Send Quode
${E-Mail}              baurdhainaut@gmail.com   
${Phone}               5511976883639
${Username}            Laurent
${Password}            Laurent@72
${Confirm_Password}    Laurent@72

#Envio Formulario
${Succes_E-Mail}       Sending e-mail success!


#O robot serve para chamar todos os testes
*** Test Cases ***
Clicar no botao Automobile   
    Validar texto    Welcome Aboard!
    Clicar no menu Automobile
    Validar Primeiro Formulario Automobile    Make               
    Preencher formulario Vehicule Data    ${Make}    ${Performance }    ${Manufacture}    ${Seats}    ${Fuel_Type}    ${List_Price }    ${License_Plate_Number}    ${Annual_Mileage}         
    Validar Segundo Formulario Automobile    First Name
    Preencher formulario Insurance Data    ${First_Name}    ${Last_Name}    ${Date_of_Birth}    ${Street_Address}    ${Country}    ${Zip_Code}    ${City}    ${Occupation}    ${Website}                                    
    Validar Terceiro Formulario Automobile    Start Date
    Preencher formulario Product Data    ${Start_Date}    ${Insurance_Sum}    ${Merit_Rating}    ${Damage_Insurance}    
    ...            ${Courtesy_Car}
    Validar Quarto Formulario Automobile    Select Option                   
    Preencher formulario Select Price Option 
    Validar Quinto Formulario Automobile    E-Mail   
    Preencher formulario Send Quode    ${E-Mail}    ${Phone}    ${Username}    ${Password}    ${Confirm_Password}                   
    Validar mensagem envio formulario    ${Succes_E-Mail}    



       