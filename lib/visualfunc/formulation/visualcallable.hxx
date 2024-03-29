/*
Copyright 2017 Michael Gautier

This file is part of Gautier RSS System by Michael Gautier.

Gautier RSS System by Michael Gautier is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

Gautier RSS System by Michael Gautier is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with Gautier RSS System by Michael Gautier.  If not, see <http://www.gnu.org/licenses/>.

Portions of the POCO C++ Libraries utilize the following copyrighted material, the use of which is hereby acknowledged.
POCO C++ Libraries released under the Boost Software License; Copyright 2017, Applied Informatics Software Engineering GmbH and Contributors; 
C++ Standard Library; Copyright 2017 Standard C++ Foundation.
*/

#ifndef __visualfunc_formulation_visualcallable__
#define __visualfunc_formulation_visualcallable__

#include <string>

namespace visualfunc {
namespace formulation {
        using namespace std;
        class visualcallable {
                private:
                        int _id = 0;
                        int _x = 0;
                        int _y = 0;
                        int _w = 0;
                        int _h = 0;
                        string _label;
                public:
                        visualcallable(int id) {
                                _id = id;
                                
                                return;
                        }
                        
                        int id();
                        
                        void id(int v);
                        
                        int x();
                        
                        void x(int v);
                        
                        int y();
                        
                        void y(int v);
                        
                        int w();
                        
                        void w(int v);
                        
                        int h();
                        
                        void h(int v);
                        
                        string label();
                        
                        void label(string v);
        };
}
}
#endif
