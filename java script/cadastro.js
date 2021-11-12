
let nome = document.querySelector('#nome')
let labelNome = document.querySelector('#labelNome')
let validNome = false


let Usuario = document.querySelector('#Usuario')
let labelUsuario = document.querySelector('#labelUsuario')
let validUsuario = false

let Senha = document.querySelector('#Senha')
let labelSenha = document.querySelector('#labelSenha')
let validSenha = false

let ComfirmSenha = document.querySelector('#ComfirmSenha')
let labelComfirmSenha = document.querySelector('#labelComfirmSenha')
let validComfirmSenha = false


let msgerror = document.querySelector('msgerror')
let msgSucess = document.querySelector('msgSucess')


nome.addEventListener('keyup', () =>{
    if(nome.value.length <= 2){
        labelNome.setAttribute('style', 'color: red')
        labelNome.innerHTML = '<strong>Nome *insira no minimo 3 caracteres</strong>'
        nome.setAttribute('style', 'border-color: red')
        validNome = false
    }else {
        labelNome.setAttribute('style', 'color: green')
        labelNome.innerHTML = 'Nome:'
        nome.setAttribute('style', 'border-color: green')
        validNome = true
    }
})

Usuario.addEventListener('keyup', () =>{
    if(Usuario.value.length <= 5){
        labelUsuario.setAttribute('style', 'color: red')
        labelUsuario.innerHTML = '<strong>Usuario *insira no minimo 3 caracteres</strong>'
        Usuario.setAttribute('style', 'border-color: red')
        validUsuario = false
    }else {
        labelUsuario.setAttribute('style', 'color: green')
        labelUsuario.innerHTML = 'Usuario:'
        Usuario.setAttribute('style', 'border-color: green')
        validUsuario = true
    }
})

Senha.addEventListener('keyup', () =>{
    if(Senha.value.length <= 4){
        labelSenha.setAttribute('style', 'color: red')
        labelSenha.innerHTML = '<strong>Senha *insira no minimo 5 caracteres</strong>'
        Senha.setAttribute('style', 'border-color: red')
        validSenha = false
    }else {
        labelSenha.setAttribute('style', 'color: green')
        labelSenha.innerHTML = 'Senha:'
        Senha.setAttribute('style', 'border-color: green')
        validSenha = true
    }
})
ComfirmSenha.addEventListener('keyup', () =>{
    if(Senha.value != ComfirmSenha.value ){
        labelComfirmSenha.setAttribute('style', 'color: red')
        labelComfirmSenha.innerHTML = '<strong>Comfirmar Senha *As senhas não conferem</strong>'
        ComfirmSenha.setAttribute('style', 'border-color: red')
        validComfirmSenha = false
    }else {
        labelComfirmSenha.setAttribute('style', 'color: green')
        labelComfirmSenha.innerHTML = 'Comfirmar Senha:'
        ComfirmSenha.setAttribute('style', 'border-color: green')
        validComfirmSenha = true
    }
})

function cadastrar(){
    if(validNome && validUsuario && validSenha && validComfirmSenha) {
        let listaUser = JSON.parse(localStorage.getItem('listaUser') || '[]')

        listaUser.push(
            {
                nomeCad: nome.value,
                userCad: Usuario.value,
                SenhaCad: Senha.value
            }
        )

        localStorage.setItem('listaUser', JSON.stringify(listaUser))



        msgSucess.setAttribute('style', 'display: block')
        msgSucess.innerHTML = '<strong>Cadastrado com sucesso!</strong>'
        msgerror.setAttribute('style', 'display: nome')
        msgerror.innerHTML = ''

        window.location.href = 'http://127.0.0.1:5500/login.html'

    } else {
        msgerror.setAttribute('style', 'display: block')
        msgerror.innerHTML = '<strong>Preencha todos os campos corretamente antes de cadastrar...</strong>'
        msgSucess.innerHTML = ''
        msgSucess.setAttribute('style', 'display: none')
    }

}














