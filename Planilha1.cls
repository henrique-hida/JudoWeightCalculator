'Projeto de substitutiva da aula 5 de PMI (07.08)
'O objetivo do codigo eh criar uma calculadora de perda de peso para atletas de judo e, posteriormente, retornar a categoria de luta do peso desejado no grupo masculino segundo as regras da IJF
'Obs: ao acentuar uma palavra, percebi que esta retornando um simbolo diferente no local do acento dependendo do sistema operacional, entao preferi deixar sem

'Categoria Maculina
Sub pjt_judo_masculino()

'Declaracao de variavel
Dim meta As Double
Dim dias As Double
Dim peso As Double
Dim resultado As Double

'Mensagem inicial"
MsgBox "Com ela voce descubrira quantos quilos deve ganhar ou perder para atingir sua meta para o campeonato de judo", vbExclamation, "Bem-vindo a calculadora Kodokan versao masculina"

'Espaco para inputs
dias = InputBox("Restam quantos dias para seu campeonato?", "Calculadora de meta Kodokan", "Digite aqui")
peso = InputBox("Qual o seu peso atual?", "Calculadora de meta Kodokan", "Digite aqui")
meta = InputBox("Digite o seu peso desejado para o campeonato", "Calculadora de meta Kodokan", "Digite aqui")

'Calculador do resultado dependendo do objetivo (como o resultado pode dar negativo, foi criado um resultado para perda e ganho, eliminando a possibilidade da negativa)
resultado_perda = (peso - meta) / dias
resultado_ganho = (meta - peso) / dias



'Condicionais para exibir a mensagem correta dependendo de perda ou ganho
'Condicional para perda
If peso > meta Then
    MsgBox "Atencao judoka, para alcancar a sua meta de " & meta & "Kg, voce deve perder " & Round(resultado_perda, 2) & "Kg por dia" & Chr(13) & "Boa sorte", vbExclamation, "Calculadora de meta Kodokan"
    
'Condicional para ganho
ElseIf peso < meta Then
    MsgBox "Atencao judoka, para alcancar a sua meta de " & meta & "Kg, voce deve ganhar " & Round(resultado_ganho, 2) & "Kg por dia" & Chr(13) & "Boa sorte", vbExclamation, "Calculadora de meta Kodokan"
    
'Condicional para peso = meta
Else
    MsgBox "Parabens judoka, voce ja esta no seu peso ideal, boa sorte", vbExclamation, "Calculadora de meta Kodokan"
End If




'Condicionais para calcular a categoria (grupo masculino)
'verificar se o peso eh menor ou igual a 60
If meta <= 60 Then
    MsgBox "voce lutara na categoria Ligeiro se atingir a meta", vbExclamation, "Atencao atleta"

'verificar se o peso eh menor ou igual a 66
ElseIf meta <= 66 Then
    MsgBox "voce lutara na categoria Meio-leve se atingir a meta", vbExclamation, "Atencao atleta"

'verificar se o peso eh menor ou igual a 73
ElseIf meta <= 73 Then
    MsgBox "voce lutara na categoria Leve se atingir a meta", vbExclamation, "Atencao atleta"

'verificar se o peso eh menor ou igual a 81
ElseIf meta <= 81 Then
    MsgBox "voce lutara na categoria Meio-medio se atingir a meta", vbExclamation, "Atencao atleta"

'verificar se o peso eh menor ou igual a 90
ElseIf meta <= 90 Then
    MsgBox "voce lutara na categoria Medio se atingir a meta", vbExclamation, "Atencao atleta"

'verificar se o peso eh menor ou igual a 100
ElseIf meta <= 100 Then
    MsgBox "voce lutara na categoria Meio-pesado se atingir a meta", vbExclamation, "Atencao atleta"

'verificar se o peso eh maior que 100
Else
    MsgBox "voce lutara na categoria Pesado se atingir a meta", vbExclamation, "Atencao atleta"
    
End If

End Sub
