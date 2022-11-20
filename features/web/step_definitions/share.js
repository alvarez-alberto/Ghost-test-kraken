const { Then } = require('@cucumber/cucumber');
const fs = require('fs');

Then('I take screenshot {string} test, {string} step', async function (test,step){
    await this.driver.takeScreenshot().then(
        function(data){
            var base64Data = data.replace(/^data:image\/png;base64,/,"")
            fs.mkdirSync(`screenshot/${test}`, { recursive: true });
            fs.writeFile(`screenshot/${test}/${step}.png`, base64Data, 'base64', 
            function(err) {
                if(err) console.log(err);
            });
        });
})