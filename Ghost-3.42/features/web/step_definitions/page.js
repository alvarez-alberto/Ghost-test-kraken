const { Given, When, Then } = require('@cucumber/cucumber');
const expect = require('chai').expect;
const assert = require("assert");

When("I go to pages", async function () {
    let element = await this.driver.$('ul:nth-child(2) > li:nth-child(3) > a' );
    return await element.click();
});

When("I click on new page", async function () {
    let button = await this.driver.$(".view-actions > a");
    return await button.click();
});
  
When("I type the tittle {string}", async function (tittle) {
    let tittleElement = await this.driver.$("[placeholder='Page Title']");
    return await tittleElement.setValue(tittle);
});

When("I click on settings", async function () {
    let settings = await this.driver.$(".post-settings");
    return await settings.click(); 
});

When("I click on publish", async function () {
    let publishButton = await this.driver.$(".gh-publishmenu-trigger");
    return await publishButton.click();
});

When("I click on publish page", async function () {
    let publishPage = await this.driver.$(".gh-publishmenu-button");
    return await publishPage.click();
});


When("I go to pages section", async function () {
    let pagesSection = await this.driver.$('.blue.link.fw4.flex.items-center.ember-view');
    return  await pagesSection.click();
});


When("I go pages publish", async function () {
    let allPages = await this.driver.$("div.gh-contentfilter-menu.gh-contentfilter-type > div.ember-view.ember-basic-dropdown-trigger.ember-power-select-trigger.gh-contentfilter-menu-trigger");
    await allPages.click();
    let pagesPublish = await this.driver.$(".ember-power-select-options > li:nth-child(3)");
    return  await pagesPublish.click();
});
     
Then("I check the first row with tittle {string}", async function (tittle) {
    let tittleElementText = await this.driver.$(".gh-list > li:nth-child(2) > a:nth-child(2) > h3").getText();
    return assert.equal(tittleElementText,tittle);
});

When("I go pages drafts", async function () {
    let allPages = await this.driver.$("div.gh-contentfilter-menu.gh-contentfilter-type > div.ember-view.ember-basic-dropdown-trigger.ember-power-select-trigger.gh-contentfilter-menu-trigger");
    await allPages.click();
    let pagesPublish = await this.driver.$(".ember-power-select-options > li:nth-child(2)");
    return  await pagesPublish.click();
});

When("I select draft page", async function () {
    let firstPage = await this.driver.$(".gh-list > li:nth-child(2) > a:nth-child(2)");
    return  await firstPage.click();
});

When("I click on remove author", async function () {
    let remove = await this.driver.$('/html/body/div[4]/div/div/div/div/div/div/div/div[1]/div[2]/form/div[5]/div/div[1]/ul/li/span/svg');
    return  await remove.click();
});

Then("I check the error message {string}", async function (tittle) {
    let errorMessage = await this.driver.$(".for-select.form-group.error > p").getText();
    return assert.equal(errorMessage,tittle);
});

