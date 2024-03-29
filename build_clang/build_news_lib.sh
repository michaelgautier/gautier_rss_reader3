#Copyright 2017 Michael Gautier
#This file is part of Gautier RSS System by Michael Gautier.
#Gautier RSS System by Michael Gautier is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#Gautier RSS System by Michael Gautier is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
#You should have received a copy of the GNU General Public License along with Gautier RSS System by Michael Gautier.  If not, see <http://www.gnu.org/licenses/>.
#Portions of the POCO C++ Libraries utilize the following copyrighted material, the use of which is hereby acknowledged.
#POCO C++ Libraries released under the Boost Software License; Copyright 2017, Applied Informatics Software Engineering GmbH and Contributors; 
#C++ Standard Library; Copyright 2017 Standard C++ Foundation.

rm obj/libnews_file.o
rm obj/libnews_http.o
rm obj/libnews_parser.o
rm obj/libnews_collector.o
rm obj/libnews_feedscycle.o

rm bin/libnews_file.so
rm bin/libnews_http.so
rm bin/libnews_parser.so
rm bin/libnews_collector.so
rm bin/libnews_feedscycle.so

echo "	build"
ls -gGhU

echo "build file lib"
clang++ -std=c++14 -c -fPIC -g -I../lib/news/techconstruct/ -o obj/libnews_file.o ../lib/news/techconstruct/file.cxx
clang++ -g -shared -lPocoFoundation -Wl,-rpath,. -o bin/libnews_file.so obj/libnews_file.o

echo "build http lib"
clang++ -std=c++14 -c -fPIC -g -I../lib/news/techconstruct/ -o obj/libnews_http.o ../lib/news/techconstruct/http.cxx
clang++ -g -shared -lPocoFoundation -lPocoUtil -lPocoNet -Wl,-rpath,. -o bin/libnews_http.so obj/libnews_http.o

echo "build parser lib"
clang++ -std=c++14 -c -fPIC -g -I../lib/news/techconstruct/ -I../lib/news/ -o obj/libnews_parser.o ../lib/news/techconstruct/parser.cxx
clang++ -g -shared -lPocoFoundation -lPocoXML -Wl,-rpath,. -o bin/libnews_parser.so obj/libnews_parser.o

echo "build collector lib"
clang++ -std=c++14 -c -fPIC -g -I../lib/news/techconstruct/ -I../lib/news/ -o obj/libnews_collector.o ../lib/news/collector.cxx
clang++ -g -shared -Wl,-rpath,. -o bin/libnews_collector.so obj/libnews_collector.o

echo "build feedscycle lib"
clang++ -std=c++14 -c -fPIC -g -I../lib/news/techconstruct/ -o obj/libnews_feedscycle.o ../lib/news/feedscycle.cxx
clang++ -g -shared -lPocoFoundation -Wl,-rpath,. -o bin/libnews_feedscycle.so obj/libnews_feedscycle.o

echo "	obj"
ls -gGh obj/

echo "	bin"
ls -gGh bin/*.so
