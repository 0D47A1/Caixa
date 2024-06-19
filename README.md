# Porque usar o package Caixa?
Olá, desenvolvedores! Este pacote pode facilitar a sua vida no Flutter: o pacote Caixa. Você já deve estar familiarizado com o Container, um dos widgets mais versáteis do Flutter. No entanto, o pacote Caixa que criamos tem algumas vantagens que podem tornar seu código mais limpo e reutilizável. Vamos explorar essas vantagens!

1. ### Reutilização de Configurações com a Classe Molde
    A Caixa utiliza uma classe auxiliar chamada Molde, que permite definir um conjunto de propriedades padrão. Isso é especialmente útil quando você tem várias caixas com estilos semelhantes. Com o Molde, você pode criar um template e reutilizá-lo em várias instâncias de Caixa, economizando tempo e esforço.

2. ### Facilidade de Uso para Ações com onTap
    Diferente do Container, que não possui suporte nativo para eventos de toque, a Caixa vem com a propriedade onTap integrada. Isso significa que você pode adicionar facilmente uma ação de toque (click) diretamente na Caixa sem precisar envolver um GestureDetector ou InkWell manualmente. Isso torna seu código mais limpo e fácil de entender.

3. ### Propriedades Estendidas para Personalização
    A Caixa estende várias propriedades que o Container oferece, mas de uma maneira que permite uma personalização mais detalhada e flexível. **Todas as propriedades do 'decoration' são configuradas diretamente na classe Caixa.**
     ```dart
    Caixa(
        height: 80,
        width: 150,
        color: const Color(0xFFD81B60),
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
            BoxShadow(
            blurRadius: 10,
            color: Color.fromARGB(96, 0, 0, 0)
            )
        ],
        child: const Center(
            child: Text("Caixa", 
                style:  TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 230, 230, 230))),
        ),
    ),
    ```

4. ### Facilidade de Aplicar Efeitos de Animação
    Com a Caixa, é fácil adicionar efeitos de toque (splash effects) usando a propriedade splashColor. Isso dá um feedback visual imediato ao usuário quando a Caixa é tocada, melhorando a experiência do usuário.

5. ### Instalação
    ```console
    $ flutter pub add caixa
    ```

    ```dart
    import 'package:caixa/caixa.dart';
    ```

#### Exemplo usando molde para criar botões :
 ```dart
var moldeButton = Molde(
        height: 80,
        width: 150,
        color: const Color(0xFF00838F),
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
            BoxShadow(
            blurRadius: 10,
            color: Color.fromARGB(96, 0, 0, 0)
            )
        ],
);
```

#### Botão 01:
 ```dart
Caixa(
    molde: moldeButton,  
    onTap: () {
        print("Botão 01");
    },                 
    child: const Center(
        child: Text("Botão 01",
            style:  TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 230, 230, 230))),
    ),
),
```

#### Botão 02:
 ```dart
Caixa(
    molde: moldeButton,  
    onTap: () {
        print("Botão 02");
    },                 
    child: const Center(
        child: Text("Botão 02",
            style:  TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 230, 230, 230))),
    ),
),
```