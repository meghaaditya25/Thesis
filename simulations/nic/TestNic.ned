//
// Copyright (C) 2006 Andras Varga
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//
package vanettutorial.simulations.nic;
import inet.physicallayer*.ieee80211.packetlevel.Ieee80211DimensionalRadioMedium;
import inet.physicallayer*.wireless.ieee80211.packetlevel.Ieee80211DimensionalRadioMedium;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.WirelessHost;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import vanettutorial.veins_inet.VeinsInetCar;
import vanettutorial.veins_inet.VeinsInetManager;
import inet.visualizer*.integrated.IntegratedVisualizer;
import inet.visualizer*.common.IntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;
import org.car2x.veins.visualizer.roads.RoadsCanvasVisualizer;
import org.car2x.veins.visualizer.roads.RoadsOsgVisualizer;

network TestNic {
 parameters:
        bool useOsg = default(false);
        @display("bgb=319,384");
    submodules:
        radioMedium: Ieee80211DimensionalRadioMedium {
            @display("p=64,224");
        }
        manager: VeinsInetManager {
            @display("p=192,320");
        }
        visualizer: IntegratedVisualizer {
            @display("p=64,320");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=192,224");
        }
        roadsCanvasVisualizer: RoadsCanvasVisualizer {
            @display("p=64,416");
        }
        roadsOsgVisualizer: RoadsOsgVisualizer if useOsg {
            @display("p=192,416");
        }
        node[0]: VeinsInetCar;
//network TestNic//
}
//    parameters:
//        int numHosts;
//        @display("bgb=450,450");
//    submodules:
//        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
//            parameters:
//                @display("p=100,300;is=s");
//        }
//        configurator: Ipv4NetworkConfigurator {
//            parameters:
//                @display("p=100,100;is=s");
//        }
//        radioMedium: <> like IRadioMedium {
//            parameters:
//                @display("p=100,200;is=s");
//        }
//        host[numHosts]: WirelessHost {
//            parameters:
//                @display("r=,,#707070;p=250,200");
//

//        }
//}
