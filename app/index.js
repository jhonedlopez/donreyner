const express=require("express")
const mysql=require("mysql")
const myconn=require("express-myconnection")
const app=express()
const indexroutes=require("./routes/app")

//Sirve para probar la conexion a la db
// Cadena de Conexion

const conexion=mysql.createConnection({
    host:"localhost",
    port:3306,
    user:"root",
    password:"admin123",
    database:"don_reyner_sas"
});

conexion.connect(function(err){
    if(err){
        console.log("Error de conexion: "+err.stack)
        return;
    }
    else{
        console.log("conexion exitosa # de Identificador "+conexion.threadId)
    }
})

//------------------------------------------------------------------------//

const conexion_2={
    host:"localhost",
    port:3306,
    user:"root",
    password:"admin123",
    database:"don_reyner_sas"
};

app.use(myconn(mysql,conexion_2,"single"))
app.use(express.json())
app.use("/",indexroutes)

app.listen(3005,function(){
    console.log("Api en el puerto 3005")

})