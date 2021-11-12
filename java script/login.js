function entrar() {
    let usuario = document.querySelector('#usuario')
    let userLabel = document.querySelector('#userLabel')

    let senha = document.querySelector('#senha')
    let senhaLabel = document.querySelector('#senhaLabel')

    let msgerror = document.querySelector('#msgerror')
    let listaUser = []


    let userValid = {
        nome:'',
        user: '',
        senha: ''
    }

    listaUser = JSON.parse(localStorage.getItem('listaUser'))

    listaUser.forEach((item) => {
    if(usuario.value == item.userCad && senha.value == item.senhaCad){
        userValid = {
            nome: item.nomeCad,
            user: item.userCad,
            senha: item.senhaCad
        }
    }
    })

    if (usuario.value == userValid.user && senha.value == userValid.senha){
        
    } else {
        userLabel.setAttribute('style', 'color: red')
        usuario.setAttribute('style', 'border-color: red')
        senhaLabel.setAttribute('style', 'color: red')
        senha.setAttribute('style', 'border-color: red')
        msgerror.setAttribute('style', 'display: block')
        msgerror.innerHTML = 'usuario ou senha incorretos'
        usuario.focus()

    }



}