*** Settings ***
#Metodos do site Tricentis
Documentation    Preencher formulário Automobile

Library    Browser
Library    OperatingSystem

*** Keywords ***
Validar texto 
    [Arguments]    ${Texto_Home}
    Wait For Elements State    xpath=//h2[text()='Welcome Aboard!']    visible    5   
    Get Text    xpath=//h2[text()='Welcome Aboard!']   equal    ${Texto_Home}     
Clicar no menu Automobile
    Wait For Elements State    xpath=(//a[contains(@id,'automobile')])[1]   visible    5
    Click    xpath=(//a[contains(@id,'automobile')])[1]
    Take Screenshot

Validar Primeiro Formulario Automobile
    [Arguments]    ${Make_Texto}
    Wait For Elements State    xpath=//label[contains(text(),'Make')]    visible    5
    Get Text    xpath=//label[contains(text(),'Make')]    equal    ${Make_Texto}   
Preencher formulario Vehicule Data 
    [Arguments]    ${Make}    ${Performance }    ${Manufacture}    ${Seats}    ${Fuel_Type}    ${List_Price }
    ...            ${License_Plate_Number}    ${Annual_Mileage}
    Select Options By    id=make   text        ${Make} 
    Fill Text    id=engineperformance        ${Performance }
    Fill Text    id=dateofmanufacture       ${Manufacture} 
    Select Options By    id=numberofseats    text        ${Seats}
    Select Options By    id=fuel    text        ${Fuel_Type}
    Fill Text    id=listprice        ${List_Price }
    Fill Text    id=licenseplatenumber        ${License_Plate_Number} 
    Fill Text    id=annualmileage        ${Annual_Mileage}
    Click    id=nextenterinsurantdata
    Take Screenshot


Validar Segundo Formulario Automobile
    [Arguments]    ${First_Name_Texto}
    Wait For Elements State    xpath=//label[text()='First Name']    visible    5
    Get Text    xpath=//label[text()='First Name']    equal    ${First_Name_Texto}    
Preencher formulario Insurance Data
    [Arguments]    ${First_Name}    ${Last_Name}    ${Date_of_Birth}    ${Street_Address}    ${Country}   
    ...            ${Zip_Code}    ${City}    ${Occupation}    ${Website}
    Fill Text    id=firstname       ${First_Name}
    Fill Text    id=lastname        ${Last_Name}
    Fill Text    id=birthdate        ${Date_of_Birth}
    Click    xpath=//*[text()='Male']/span    
    Fill Text    id=streetaddress        ${Street_Address}
    Select Options By    id=country    text       ${Country}
    Fill Text    id=zipcode        ${Zip_Code}
    Fill Text    id=city        ${City}
    Select Options By    id=occupation    text       ${Occupation} 
    Click    xpath=//*[text()=' Speeding']/span
    Fill Text    id=website       ${Website}
    Click    id=nextenterproductdata
    Take Screenshot

Validar Terceiro Formulario Automobile
    [Arguments]    ${Start_Date_Texto}
    Wait For Elements State    xpath=//label[text()='Start Date']    visible    5
    Get Text    xpath=//label[text()='Start Date']    equal    ${Start_Date_Texto}

Preencher formulario Product Data
    [Arguments]    ${Start_Date}    ${Insurance_Sum}    ${Merit_Rating}    ${Damage_Insurance}    
    ...            ${Courtesy_Car}    
    Fill Text    id=startdate        ${Start_Date}
    Select Options By    id=insurancesum    text        ${Insurance_Sum}
    Select Options By    id=meritrating    text        ${Merit_Rating}
    Select Options By    id=damageinsurance    text       ${Damage_Insurance}
    Wait For Elements State    xpath=//label[@class='ideal-radiocheck-label'][contains(.,'Euro Protection')]   
    Click   xpath=//label[@class='ideal-radiocheck-label'][contains(.,'Euro Protection')]
    Select Options By    id=courtesycar    text        ${Courtesy_Car} 
    Click    id=nextselectpriceoption
    Take Screenshot

Validar Quarto Formulario Automobile
    [Arguments]    ${Select_Option} 
    Wait For Elements State    xpath=//th[contains(text(),'Select Option')]    visible    10
    Get Text    xpath=//th[contains(text(),'Select Option')]    equal    ${Select_Option}      
Preencher formulario Select Price Option
    Click    xpath=//label[contains(@class,'choosePrice ideal-radiocheck-label')][4]
    Click    id=nextsendquote
    Take Screenshot
Validar Quinto Formulario Automobile
    [Arguments]    ${E-Mail}   
    Wait For Elements State    xpath=//label[text()='E-Mail']    visible    5
    Get Text    xpath=//label[text()='E-Mail']    equal    ${E-Mail} 
Preencher formulario Send Quode
    [Arguments]    ${E-Mail}    ${Phone}    ${Username}    ${Password}    ${Confirm_Password}   
    Fill Text    id=email        ${E-Mail}
    Fill Text    id=phone        ${Phone}
    Fill Text    id=username        ${Username}
    Fill Text    id=password        ${Password}
    Fill Text    id=confirmpassword        ${Confirm_Password}
    Click        id=sendemail
    Take Screenshot

Validar mensagem envio formulario
    [Arguments]    ${Succes_E-Mail}
    Wait For Elements State    xpath=//h2[text()='Sending e-mail success!']    visible    10
    Get Text     xpath=//h2[text()='Sending e-mail success!']    equal        ${Succes_E-Mail}
    Click        xpath=//div[@class='sa-confirm-button-container']
    Take Screenshot
      