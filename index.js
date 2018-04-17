const puppeteer = require('puppeteer')

let capture = async () => {
  const browser = await puppeteer.launch({
    // headless: false,
    // slowMo: 1000
  })
  const page = await browser.newPage()
  await page.goto('https://ultimatehackingkeyboard.com/delivery-status')
  await page.screenshot({path: 'images/current.png', fullPage: true})

  await browser.close()
}

capture()
