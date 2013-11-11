document.addEventListener 'page:change', ->
        document.getElementById('wrapper').className += 'animated fadeIn'

document.addEventListener 'page:fetch', ->
        document.getElementById('wrapper').className += 'animated fadeOut'