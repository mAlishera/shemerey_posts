exports.config = {
  // See http://brunch.io/#documentation for docs.
  files: {
    javascripts: {
      joinTo: "js/app.js",
      order: {
        before: [
          "vendor/bootstrap/js/bootstrap.js",
          "vendor/bootstrap/js/bootstrap.min.js",
          "web/static/assets/jquery/jquery.js",
          "web/static/assets/jquery/jquery.min.js",
          "js/jqBootstrapValidation.js",
          "js/clean-blog.js",
          "js/clean-blog.min.js",
          "js/contact_me.js"
        ],
        after: [
          "web/static/js/app.js" // concat app.css last
        ]
      }

      // To use a separate vendor.js bundle, specify two files path
      // https://github.com/brunch/brunch/blob/stable/docs/config.md#files
      // joinTo: {
      //  "js/app.js": /^(web\/static\/js)/,
      //  "js/vendor.js": /^(web\/static\/vendor)|(deps)/
      // }
      //
      // To change the order of concatenation of files, explicitly mention here
      // https://github.com/brunch/brunch/tree/master/docs#concatenation
      // order: {
      //   before: [
      //     "web/static/vendor/js/jquery-2.1.1.js",
      //     "web/static/vendor/js/bootstrap.min.js"
      //   ]
      // }
    },
    stylesheets: {
      joinTo: "css/app.css",
      order: {
        before: [
          "vendor/bootstrap/css/bootstrap.css",
          "vendor/bootstrap/css/bootstrap.min.css",
          "css/clean-blog.css",
          "css/clean-blog.min.css",
          "vendor/font-awesome/css/font-awesome.css",
          "vendor/font-awesome/css/font-awesome.min.css"
        ],
        after: [
          "web/static/css/app.css" // concat app.css last
        ]
      }
    },
    templates: {
      joinTo: "js/app.js"
    }
  },

  conventions: {
    // This option sets where we should place non-css and non-js assets in.
    // By default, we set this to "/web/static/assets". Files in this directory
    // will be copied to `paths.public`, which is "priv/static" by default.
    assets: [
      /^(node_modules\/font-awesome)/,
      /^(web\/static\/assets)/
    ]
  },

  // Phoenix paths configuration
  paths: {
    // Dependencies and current project directories to watch
    watched: [
      "web/static",
      "node_modules/font-awesome/fonts/fontawesome-webfont.eot",
      "node_modules/font-awesome/fonts/fontawesome-webfont.svg",
      "node_modules/font-awesome/fonts/fontawesome-webfont.ttf",
      "node_modules/font-awesome/fonts/fontawesome-webfont.woff",
      "node_modules/font-awesome/fonts/fontawesome-webfont.woff2",
      "test/static"
    ],

    // Where to compile files to
    public: "priv/static"
  },

  // Configure your plugins
  plugins: {
    sass: {
      options: {
        includePaths: ["node_modules/bootstrap-sass/assets/stylesheets"], // tell sass-brunch where to look for files to @import
        precision: 8 // minimum precision required by bootstrap-sass
      }
    },
    copycat: {
      "fonts": ["node_modules/bootstrap-sass/assets/fonts/bootstrap"] // copy node_modules/bootstrap-sass/assets/fonts/bootstrap/* to priv/static/fonts/
    }
  },

  modules: {
    autoRequire: {
      "js/app.js": [
        "bootstrap-sass", // require bootstrap-sass' JavaScript globally
        "web/static/js/app"
      ]
    }
  },

  npm: {
    enabled: true,
    whitelist: ["phoenix", "phoenix_html", "jquery", "bootstrap-sass"], // pull jquery and bootstrap-sass in as front-end assets
    globals: { // bootstrap-sass' JavaScript requires both '$' and 'jQuery' in global scope
      $: 'jquery',
      jQuery: 'jquery'
    }
  }
};
