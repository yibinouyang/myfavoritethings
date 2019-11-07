const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, name, gender, Age, nationality, image FROM favoritethings";

    sql.query(query, (err, result) => {
        if (err) {throw err; console.log(err);}

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home' ,{ people: result });

        // 
    })
})
// localhost:3000/anything  (localhost:3000/anything - the anything will show in the terminal) 
// (whatever you put after the slash in the location bar)
router.get('/:id', (req,res) =>{
    console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT ID, name, gender, Age, nationality, image FROM favoritethings WHERE ID="${req.params.id}"` ;
    
    // under the code is to query the related data form the table and display in terminla 

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // turn our socail property into an array - it's just text in the DB, 
        // which isn't reallt anything we can work with
        // result[0].social = result[0].social.split(",").map(function(item){
        //     item = item.trim();
            // remove the extra spaces from each word

        //     return item;
        // });

        // console.log('after split: ', result[0]);

        // render the home view with dynamic data
        // res.render('home' ,{ people: result });
        // send the DB query back to the browser
        res.json(result);

         
    })

})

module.exports = router;