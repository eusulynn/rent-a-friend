import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log("Connected to map controller")

    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/eusulynn/clicncq9q000a01qvcwqbby93"
      // style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  // #addMarkerToMap() {
  //   this.markersValue.forEach((marker) => {
  //     const customMarker = document.createElement("div");
  //     // customMarker.className = "marker";
  //     // customMarker.style.backgroundImage = `url('${marker.user.photo_url}')`;
  //     customMarker.style.backgroundColor = "blue";
  //     customMarker.style.width = "35px";
  //     customMarker.style.height = "45px";

  //     const popup = new mapboxgl.Popup().setHTML(maker.info_window)
  //     new mapboxgl.Marker({element: customMarker})
  //       .setLngLat([marker.lng, marker.lat])
  //       .addTo(this.map)
  //     // .setPopup(popup);
  // }
  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement('div')
      customMarker.style.height = "30px"
      customMarker.style.width = "30px"
      customMarker.style.borderRadius = "50%"
      customMarker.style.border = "2px solid #ffffff";
      customMarker.style.boxShadow = "0px 2px 4px rgba(0, 0, 0, 0.25)";
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"

      console.log(customMarker)
      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 5000 })
  }
}
