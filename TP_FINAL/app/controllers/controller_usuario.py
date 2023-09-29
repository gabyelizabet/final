from ..models.model_usuario import ModeloUsuario
from flask import request, session



class UsuarioController:
    
    @classmethod
    def login(cls):
        data= request.json
        user= ModeloUsuario(
            email=data.get("email"),
            contraseña=data.get("contraseña"),
        )
        user= ModeloUsuario.login(user)
        if user: 
            session["usuario_id"]=user.usuario_id
            session["nombre_usuario"]= user.nombre_usuario
            session["email"]= user.email
            session["foto"]= user.foto
            return user.serialize(), 200
        return {"message":"Acreditacion Invalida"}, 401
        
   
    @classmethod
    def show_profile(cls):
        email= session.get('email')
        email = ModeloUsuario.get_usuario(ModeloUsuario(email= email)) 
        if email is None:
            return {"mensaje":"Usuario no encontrado"}, 404
        else:
            return ModeloUsuario.serialize(), 200   
        
    @classmethod
    def logout(cls):
        session.pop('email', None)
        return { "mensaje":"Sesión cerrada"}, 200
    
    
    @classmethod
    def get_usuario(cls,usuario_id):
        usuario = ModeloUsuario(usuario_id=usuario_id)
        result = ModeloUsuario.get_usuario(usuario)
        if result is not None:
            return result.serialize(),200
      
    @classmethod  
    def get_all(cls):
        usuarios_objects= ModeloUsuario.get_all()
        usuarios =[]
        for usuario in usuarios_objects:
            usuarios.append(usuario)
        return usuarios, 200
    
    @classmethod
    def crear_usuario(cls, usuario):
        usuario_data= request.json
        usuario = ModeloUsuario(
            nombre_usuario= usuario_data.get('nombre_usuario'),
            nombre= usuario_data.get('nombre'),
            apellido= usuario_data.get('apellido'),
            email= usuario_data.get('email'),
            contraseña= usuario_data.get('contraseña'),
            f_nacim= usuario_data.get('f_nacim')
        )
        ModeloUsuario.crear_usuario(usuario)
        return {"message":"Usuario creado con exito"}, 200
        
    
    @classmethod
    def delete(cls, usuario_id):
        usuario= ModeloUsuario(usuario_id = usuario_id)
        
        if usuario is not None:
            ModeloUsuario.delete(usuario)
            return  {'message': 'User deleted successfully'}, 204
        else:
            return  {'message': 'User the user does not exist'}           
    
    