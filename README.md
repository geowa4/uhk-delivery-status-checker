# Check Delivery of My UHK

I made a thing to check the status of my order.

## Why?

I felt like playing with Puppeteer, Emacs, & Make so I made a complicated way to check if my order is ready by loading the page and taking a screenshot.
That image is then  passed to ImageMagick for comparison.

Because that's obviously inefficient, I also included a simple test with `curl | grep`.

Since `pup` is cool, I tossed that in, too.
Oh, and why not toss in `jq`?

## Running it

```
make
```

## Contributing

If you have another way to check if my order is next up, submit a PR.
I don't know if I'll merge it, but it could be fun to look at it.
Or not.
