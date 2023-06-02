import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log("Connected to minimap controller")

    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/eusulynn/clicncq9q000a01qvcwqbby93"
      // style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }



  #addMarkersToMap() {
    const marker = this.markersValue[0]; // Assuming you have only one marker in the array

    const customMarker = document.createElement('div');
    customMarker.innerHTML = marker.marker_html;
    customMarker.style.height = "85px";
    customMarker.style.width = "65px";
    customMarker.style.objectFit = "cover";
    // customMarker.style.borderRadius = "50%";
    // customMarker.style.border = "2px solid #ffffff";
    // customMarker.style.boxShadow = "0px 2px 4px rgba(0, 0, 0, 0.25)";
    customMarker.style.backgroundImage = `url('${marker.image_url}')`;
    customMarker.style.backgroundSize = "contain";

    console.log(marker.lng);
    console.log(marker.lat);
    console.log(customMarker);

    new mapboxgl.Marker(customMarker)
      .setLngLat([marker.lng, marker.lat])
      .addTo(this.map);
  }
  // Map works, location shows, marker does not appear >>>
  // #addMarkersToMap() {
  //   this.markersValue.forEach((marker) => {
  //     const customMarker = document.createElement('div')
  //     customMarker.innerHTML = marker.marker_html
  //     customMarker.style.height = "45px"
  //     customMarker.style.width = "45px"
  //     customMarker.style.borderRadius = "50%"
  //     customMarker.style.border = "2px solid #ffffff";
  //     customMarker.style.boxShadow = "0px 2px 4px rgba(0, 0, 0, 0.25)";
  //     customMarker.style.backgroundImage = `url('${marker.image_url}')`
  //     customMarker.style.backgroundSize = "contain"

  //     console.log(marker.lng)
  //     console.log(marker.lat)
  //     console.log(customMarker)
  //     new mapboxgl.Marker(customMarker)
  //     .setLngLat([ marker.lng, marker.lat ])
  //     console.log(this.map)
  //     // .addTo(this.map)
  //     // this.bind showed new york aka broke the map location
  //     .addTo(this.map.bind(this))
  //    })
  // }




  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0})
  }
}
