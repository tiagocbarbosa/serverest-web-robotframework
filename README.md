# Automation of the ServeRest website

The file is on construction...

This application is a test automation of the website [ServeRest](https://front.serverest.dev/login), the frontend version of the [API REST ServeRest](https://serverest.dev/), using Robot Framework with SeleniumLibrary.

## Prerequisites
- robotframework x;
- robotframework-seleniumlibrary x;
- chromedriver x;
- Python x.

## How to use

To use this automation, clone the project on your machine and open it on your favorite IDE.

The tests cases of the web application are located in the `tests/` dir, and the keywords definitions are in the `pages/`.

To execute the automation, you can run the `robot -d results/ tests/` command. The option `-d results/` saves the evidences in the `results/` dir; the `tests/` option runs the test cases from the `tests/` dir.

Other commands:

- `robot -d results/ tests/login_test.robot` -> run the tests cases defined in the `login_test.robot` file;
- `robot -d results/ -i regression tests/` -> run the test cases defined with the `regression` tag.

After you execute the automation, you can check the result of the tests on the `report.html` file that will be created in the `results/` dir.

### TO DOs:
- cadastrar uma conta e logar com sucessso (done)
- cadastrar uma conta existente
- logar e deslogar com sucesso (done)
- logar e pesquisar um produto com sucesso (done)
- logar, pesquisar um produto e adicionar na lista com sucesso
- logar, pesquisar um produto, adicionar na lista e aumentar a quantidade para dois itens
- logar, pesquisar um produto, adicionar na lista e remover da lista

## References
[Robot Framework documentation](https://robotframework.org/)

[SeleniumLibrary documentation](https://github.com/robotframework/SeleniumLibrary/)

[Locating 'data-' attributes](https://github.com/robotframework/SeleniumLibrary/issues/1474)