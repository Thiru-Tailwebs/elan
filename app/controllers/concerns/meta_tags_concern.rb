# app/controllers/concerns/meta_tags_concern.rb
module MetaTagsConcern
    extend ActiveSupport::Concern

    def prepare_meta_tags(options={})
        site_name   = "Elan Decor"
        title       = options[:title] || "Elevate Your Home with Timeless Elegance & Expert Design | Elan Furnishing"
        description = options[:description] || "Elevate your home with Elan Furnishing – discover handpicked treasures, expert design services, and top-tier brands for an enchanting living experience"
        image       = options[:image] || "https://elandecor.in/images/home-page/elan-new-logo.png"
        current_url = options[:current_url] || "https://elandecor.in"
        keywords    = "furnishing, home furnishings, home furnishings items, home furnishings products, home furnishings online"

        defaults = {
            site:        title,
            description: description,
            author:      site_name,
            rating:      'General',
            city:        'Chennai',
            state:       'Tamil Nadu',
            keywords:    keywords,
            twitter: {
            site_name: site_name,
            site: '@elandecor',
            card: 'summary',
            description: description,
            image: image
            },
            og: {
                url: current_url,
                site_name: site_name,
                title: title,
                image: image,
                description: description,
                type: 'website'
            },
            distribution: 'global',
            noindex: false,
            googlebot: 'index,follow,all',
            canonical: current_url,
            'revisit-after' => '7 days'
        }
        options.reverse_merge!(defaults)

        set_meta_tags options
    end

end
