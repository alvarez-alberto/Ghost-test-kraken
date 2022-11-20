const { Given, When, Then } = require('@cucumber/cucumber');
const expect = require('chai').expect;

Then('I click on the in the menu option Tags', async function () {
  const menu = await this.driver.$("[class='gh-nav-list gh-nav-manage']");
  let li = await menu.$$('li')[6];
  return await li.click();
});



Then('I click on button New Tag', async function () {
  let element = await this.driver.$("[class='ember-view gh-btn gh-btn-green']");
  return await element.click();
});

Then('I enter Tag Name {string}', async function (tagName) {
  let element = await this.driver.$('#tag-name');
  return await element.setValue(tagName);
});


Then('I click on button Save in Tags', async function () {
  let element = await this.driver.$("[class='gh-btn gh-btn-blue gh-btn-icon ember-view']");
  return await element.click();
});

Then('I click on Tags', async function () {
  let element = await this.driver.$("[class='ember-view']");
  return await element.click();
});


Then('I validating that new tag is in Tags list', async function () {
  let element = await this.driver.$("[class='gh-tag-list-name']");
  return await element.click();
});

Then('I Delete Tag', async function () {
  let element = await this.driver.$("[class='gh-btn gh-btn-red gh-btn-icon mb15']");
  return await element.click();
});

Then('I Confirm Delete Tag', async function () {
  let element = await this.driver.$("[class='gh-btn gh-btn-red gh-btn-icon ember-view']");
  return await element.click();
});


Then('I Confirm Validation Error on Tag Name field', async function () {
  let element = await this.driver.$("[class='response']");
  const value = await element.getText();

  return expect(value).to.equal('You must specify a name for the tag.'); 
 
});

Then('I enter Tag Slug {string}', async function (tagSlug) {
  let element = await this.driver.$('#tag-slug');
  return await element.setValue(tagSlug);
});

Then('I Confirm Validation Error on Tag Slug field', async function () {
  let element = await this.driver.$("[class='retry_svg__retry-animated']");
  return expect(element).to.exist;
 
});



Then('I enter Tag Description {string}', async function (tagDescription) {
  let element = await this.driver.$('#tag-description');
  return await element.setValue(tagDescription);
});
