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
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }
    #addMarkersToMap() {

      this.markersValue.forEach((marker) => {
        new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })

      // const customMarker = document.createElement("div");
      // customMarker.className = "marker";
      // customMarker.style.backgroundImage = `url('${marker.image_url}')`;
      // customMarker.style.backgroundSize = "cover";
      // customMarker.style.width = "35px";
      // customMarker.style.height = "45px";

      // new mapboxgl.Marker(customMarker)
      //   .setLngLat([marker.lng, marker.lat])
      //   .addTo(this.map)
      //   .setPopup(popup);
    }
    #fitMapToMarkers() {
      const bounds = new mapboxgl.LngLatBounds()
      this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
      this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
    }
}
