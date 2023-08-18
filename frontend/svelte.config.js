import adapter from '@sveltejs/adapter-static';

const dev = process.argv.includes('dev');
 
/** @type {import('@sveltejs/kit').Config} */
const config = {
  kit: {
    adapter: adapter({
			fallback: 'index.html',
		}),
    paths: {
      base: dev ? '' : process.env.BASE_PATH,
    }
  }
};

export default config;
