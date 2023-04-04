//
//  ViewController.swift
//  LocationDemo
//
//  Created by Bennett Lee on 4/3/23.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 0
        locationManager.delegate = self

        if locationManager.authorizationStatus == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
        }

        if locationManager.authorizationStatus == .denied {
            // Do a pop up
//            UIAlertAction(title: "NEED LOCATION NOW!!!", style: )
        }

//        let location1 = CLLocation()
//        let location2 = CLLocation()
//
//        let distance = location1.distance(from: location2)


        locationManager.startUpdatingLocation()

    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        if let location = locations.first {
            print("Lat : \(location.coordinate.latitude) Lng: \(location.coordinate.longitude)")
        }
    }


}

