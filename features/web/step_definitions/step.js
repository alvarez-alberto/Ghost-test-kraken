const { Given, When, Then } = require('@cucumber/cucumber');
const expect = require('chai').expect;

Then('I enter email {string}', async function (email) {
    let element = await this.driver.$('#ember6');
    return await element.setValue(email);
});

Then('I enter password {string}', async function (password) {
    let element = await this.driver.$('#ember8');
    return await element.setValue(password);
});

Then('I click sign in', async function() {
    let element = await this.driver.$('#ember10');
    return await element.click();
})

Then('I enter user {string}', async function (user) {
    let element = await this.driver.$('#member-name');
    return await element.setValue(user);
});

Then('I enter user email {string}', async function (userEmail) {
    let element = await this.driver.$('#member-email');
    return await element.setValue(userEmail);
});

Then('I click save', async function() {
    let element = await this.driver.$('#ember27');
    return await element.click();
})

Then('I wait for retry button to be enabled', async function() {
    let element = await this.driver.$("span[text='Retry']");
    expect(element).to.exist;
})

Then('I wait for saved notification', async function() {
    let element = await this.driver.$("span[text='Saved']");
    expect(element).to.exist;
})