const { Given, When, Then } = require('@cucumber/cucumber');
const expect = require('chai').expect;

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
});

Then('I wait for retry button to be enabled', async function() {
    let element = await this.driver.$("span[text='Retry']");
    expect(element).to.exist;
});

Then('I wait for saved notification', async function() {
    let element = await this.driver.$("span[text='Saved']");
    expect(element).to.exist;
});

Then('I click on edit', async function() {
    let element = await this.driver.$("[class='ember-view gh-post-list-cta edit ']");
    return await element.click();
});

Then('I open editor menu', async function() {
    let element = await this.driver.$("[title=Settings]");
    return await element.click();
});

Then('I eliminate the author', async function() {
    let element = await this.driver.$('[aria-label="remove element"]');
    return await element.click();
})

Then('I wait for no author warning to appear', async function() {
    let element = await this.driver.$("span[text='At least one author is required']");
    expect(element).to.exist;
});