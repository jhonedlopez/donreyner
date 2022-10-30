const express=require("express")
const router=express.Router()
const bodyParser=require("body-parser")
const { getRandomValues } = require("crypto")
const urlcodeParser=bodyParser.urlencoded({extended:false})
var app=express()


router.get("/",function(req,res){
    res.send("Mensaje: Soy el API - Arriba")

})

//Insertar usuarios(Proveedores)

router.post("/inserta_User",urlcodeParser,function(req,res){
    // res.send("Ruta insertar")
    const Nombre_Completo=req.body.Nombre_Completo
    const No_Identificacion=req.body.No_Identificacion
    const Ciudad=req.body.Ciudad
    const Precio=req.body.Precio
    const Descuento=req.body.Descuento
    const Costo_Transporte=req.body.Costo_Transporte
    const Tiempo_Entrega=req.body.Tiempo_Entrega
    const Average_Mercancia_Defectuosa=req.body.Average_Mercancia_Defectuosa

    req.getConnection((err,conn)=>{
        if(err) return res.send(err)
        const x=""
        const consulta=x.concat('insert into Proveedores(Nombre_Completo,No_Identificacion,Ciudad,Precio,Descuento,Costo_Transporte,Tiempo_Entrega,Average_Mercancia_Defectuosa) value("',Nombre_Completo,'","',No_Identificacion,'","',Ciudad,'","',Precio,'","',Descuento,'","',Costo_Transporte,'","',Tiempo_Entrega,'","',Average_Mercancia_Defectuosa,'")')
        conn.query(consulta,[req.body],(err,result,rows)=>{
            if(err){
                res.send(err)
            }
            else{
                res.status(200).send({save:1})
                if(res.status(200)){
                    console.log("Usuario Almacenado")
                    console.log(result)
                }
            }

        })
    })

});

//Mostrar usuarios (Proveedores)

router.post("/MostrarProveedores", urlcodeParser, function(req,res){
    req.getConnection((err,conn)=>{
        if(err) return res.send(err)
        const consulta="select * from proveedores"
        conn.query(consulta,[req.body,],(err,result,rows)=>{
            if(err){res.send(err)}
            else{res.status(200).send({result})
            console,Log(result)
            }
       })
   })
});

//Actualizar registros

router.post("/update",urlcodeParser, function (req, res) {
    const Nombre_Completo=req.body.Nombre_Completo
    const No_Identificacion=req.body.No_Identificacion
    const Ciudad=req.body.Ciudad
    const Precio=req.body.Precio
    const Descuento=req.body.Descuento
    const Costo_Transporte=req.body.Costo_Transporte
    const Tiempo_Entrega=req.body.Tiempo_Entrega
    const Average_Mercancia_Defectuosa=req.body.Average_Mercancia_Defectuosa
    const id = req.body.id;

    req.getConnection((err, conn) => {
        if (err) return res.send(err)
        const x="";
        const consulta=x.concat('update proveedores set Nombre_Completo="',Nombre_Completo,'", No_Identificacion="',No_Identificacion,'", Ciudad="',Ciudad,'", Precio="',Precio,'", Descuento="',Descuento,'", Costo_Transporte="',Costo_Transporte,'", Tiempo_Entrega="',Tiempo_Entrega,'", Average_Mercancia_Defectuosa="',Average_Mercancia_Defectuosa,'" where id="',id,'"')
        console.log(consulta)
        conn.query(consulta, [req.body],(err, result,fields) => {
            if (err){
                res.send(err)
            }
            else{
                res.status(200).send({save:1});
                if(res.status(200)){
                    console.log('Registro Actualizado')
                    console.log(result)
                }
            }
        })
    })
});

//Eliminar registro

router.post("/delete", function(req, res){
    const id = req.body.id;

    req.getConnection((err,conn)=>{
        if(err) return res.send(err)
        const x="";
        const consulta=x.concat('delete from proveedores where id=',id)
        console.log(consulta)
        conn.query(consulta, [req.body],(err, result,fields) =>{
            if (err) return res.send(err)
            console.log(result)
            res.status(200).send('registro eliminado')
       })
    })
});

module.exports=router