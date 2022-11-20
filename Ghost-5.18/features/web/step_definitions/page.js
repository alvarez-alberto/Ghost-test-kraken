const { Given, When, Then } = require('@cucumber/cucumber');
const expect = require('chai').expect;
const assert = require("assert");

When("I go to pages", async function () {
    let element = await this.driver.$('.gh-nav-top > ul:nth-child(2) > li:nth-child(2)');
    return await element.click();
});

When("I click on new page", async function () {
    let button = await this.driver.$(".view-actions > a");
    return await button.click();
});
  
When("I type the tittle {string}", async function (tittle) {
    let tittleElement = await this.driver.$("[placeholder='Page title']");
    return await tittleElement.setValue(tittle);
});

When("I click on settings", async function () {
    let settings = await this.driver.$(".gh-btn:nth-child(2)");
    return await settings.click(); 
});

When("I click on publish", async function () {
    let publishButton = await this.driver.$(".gh-publish-trigger");
    return await publishButton.click();
});

When("I click on publish continue", async function () {
    let continueButton = await this.driver.$(".gh-publish-cta >button");
    return await continueButton.click();
});

When("I click on publish page", async function () {
    let publishPage = await this.driver.$(".gh-publish-cta >button");
    return await publishPage.click();
});

  
When("I go to editor section", async function () {
    let editorSection = await this.driver.$(".gh-btn-editor");
    return  await  await editorSection.click();;
});

When("I go to pages section", async function () {
    let pagesSection = await this.driver.$(".gh-editor-back-button");
    return  await pagesSection.click();
});

When("I go pages publish", async function () {
    let allPages = await this.driver.$("div.gh-contentfilter-menu.gh-contentfilter-type > div.ember-view.ember-basic-dropdown-trigger.ember-power-select-trigger.gh-contentfilter-menu-trigger");
    await allPages.click();
    let pagesPublish = await this.driver.$(".ember-power-select-options > li:nth-child(3)");
    return  await pagesPublish.click();
});
     
Then("I check the first row with tittle {string}", async function (tittle) {
    let tittleElementText = await this.driver.$(".pages-list > li:nth-child(1) > a:nth-child(1) > h3").getText();
    return assert.equal(tittleElementText,tittle);
});

When("I go pages drafts", async function () {
    let allPages = await this.driver.$("div.gh-contentfilter-menu.gh-contentfilter-type > div.ember-view.ember-basic-dropdown-trigger.ember-power-select-trigger.gh-contentfilter-menu-trigger");
    await allPages.click();
    let pagesPublish = await this.driver.$(".ember-power-select-options > li:nth-child(2)");
    return  await pagesPublish.click();
});

When("I select draft page", async function () {
    let firstPage = await this.driver.$(".pages-list > li:nth-child(1) > a:nth-child(1)");
    return  await firstPage.click();
});

When("I click on remove author", async function () {
    let remove = await this.driver.$(".ember-power-select-multiple-remove-btn");
    return  await remove.click();
});

Then("I check the error message {string}", async function (tittle) {
    let errorMessage = await this.driver.$(".for-select.form-group.error > p").getText();
    return assert.equal(errorMessage,tittle);
});

