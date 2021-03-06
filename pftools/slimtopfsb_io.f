C BHEADER**********************************************************************
C 
C   Copyright (c) 1995-2009, Lawrence Livermore National Security,
C   LLC. Produced at the Lawrence Livermore National Laboratory. Written
C   by the Parflow Team (see the CONTRIBUTORS file)
C   <parflow@lists.llnl.gov> CODE-OCEC-08-103. All rights reserved.
C 
C   This file is part of Parflow. For details, see
C   http://www.llnl.gov/casc/parflow
C 
C   Please read the COPYRIGHT file or Our Notice and the LICENSE file
C   for the GNU Lesser General Public License.
C 
C   This program is free software; you can redistribute it and/or modify
C   it under the terms of the GNU General Public License (as published
C   by the Free Software Foundation) version 2.1 dated February 1999.
C 
C   This program is distributed in the hope that it will be useful, but
C   WITHOUT ANY WARRANTY; without even the IMPLIED WARRANTY OF
C   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the terms
C   and conditions of the GNU General Public License for more details.
C 
C   You should have received a copy of the GNU Lesser General Public
C   License along with this program; if not, write to the Free Software
C   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
C   USA
C **********************************************************************EHEADER

      subroutine ropen(fname)
      character*(*)  fname
c
      open(30,file=fname,status='old',form='unformatted')
      return
      end

      subroutine rnindex(nindex)
      integer        nindex
c
      read(30) curtime 
      read(30) nindex
      return
      end

      subroutine rindex(index, nindex)
      integer        index(1)
      integer        nindex
c
      read(30) (index(j),j=1,nindex)

      return
      end

      subroutine rcnt(cnt, nindex)
      real           cnt(1)
      integer        nindex
c
      read(30) (cnt(j),j=1,nindex)

      return
      end

      subroutine rclose()
c
      close(30)
      return
      end



