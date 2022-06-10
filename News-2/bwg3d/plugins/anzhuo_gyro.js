
/* krpano 1.16.9 gyro plugin (build 2013-10-28) 
for devices with Gyro sensor (iPhone4 and iPad2 with iOS4.2+)
by Aldo Hoeben / fieldOfView.com
contributions by 
        Sjeiti / ronvalstar.nl
        Klaus / krpano.com
        
http://fieldofview.github.com/krpano_fovplugins/gyro/plugin.html
This software can be used free of charge and the source code is available under a Creative Commons Attribution license:
        http://creativecommons.org/licenses/by/3.0/     
*/
/*
var krpanoplugin = function() {
	// 打开touch模式
    function z() {
        E = !1;
        s = null;
        void 0 === k ? l = !0 : k && !l ? (window.addEventListener("deviceorientation", J, !0), c.control.layer.addEventListener("touchstart", K, !0), c.control.layer.addEventListener("touchend", A, !0), c.control.layer.addEventListener("touchcancel", A, !0), l = !0, B = -L(), u = p = g = 0, n = c.view.camroll) : l = !1
    }
	// 停止touch 模式
    function C() {
        k && l && (window.removeEventListener("deviceorientation", J, !0), c.control.layer.removeEventListener("touchstart", K), c.control.layer.removeEventListener("touchend", A), c.control.layer.removeEventListener("touchcancel", A));
        D && c.call("tween(view.camroll,0)");
        l = !1
    }
    function M() {
        l ? C() : z()
    }
    function F() {
        window.removeEventListener("deviceorientation", F, !1);
        c.device.realDesktop || (k = !0, l && (l = !1, z()), null != e.onavailable && c.call(e.onavailable, e))
    }
	// touch start
    function K() {
        G = !0
    }
	// touch end || touch cancel
    function A() {
        G = !1
    }
	// 屏幕方向获取（用于计算角度偏移量时修正）
    function L() {
        var b = t ? top.orientation: window.orientation;
        isNaN(b) && (b = screen.width > screen.height, b = c.device.mobile ? b ? 90 : 0 : b ? 0 : 90);
        return b
    }
	// custom
	var arraySize = 30 ;
	var xArray = new Array(arraySize) ;
	var yArray = new Array(arraySize) ;
	var zArray = new Array(arraySize) ;
	var index = -1 ;
	function getNextIndex(idx, maxIndex) {
		if (idx < 0)
		{
			idx = 0 ;
		} else {
			idx++ ;
		}
		if (idx >= maxIndex)
		{
			idx = 0 ;
		}
		return idx ;
	}
	function average(array, idx, newVal) {
		var i = 0 ;
		array[idx] = newVal ;
		var sum = array[0] ;
		var n = 1 ;
		for (var j = 1; j < array.length; j++)
		{
			if (!isNaN(array[j]))
			{
				sum += array[j] ;
				n++ ;
			}
		}
		return sum/n ;
	}
	
	// 屏幕方向监听
	// b就是获取到的陀螺仪方向
    function J(b) {
        if (!G && l) {
            var e = L(),
            m,
			// 以下应该是x，y，z轴的倾斜角度转换成 PI
            a = b.alpha * v,
            h = b.beta * v,
            d = b.gamma * v,
			// 重新计算a，h，d的值
			index = getNextIndex(index, arraySize) ;
			a = average(xArray, index, a) ;
			h = average(yArray, index, h) ;
			d = average(zArray, index, d) ;

            j;
            j = Math.cos(a);
            var a = Math.sin(a),
            f = Math.cos(h),
            h = Math.sin(h),
            q = Math.cos(d),
            d = Math.sin(d),
            a = [a * d - j * h * q, -j * f, j * h * d + a * q, f * q, -h, -f * d, a * h * q + j * d, a * f, -a * h * d + j * q];
            0.9999 < a[3] ? (j = Math.atan2(a[2], a[8]), a = Math.PI / 2, d = 0) : -0.9999 > a[3] ? (j = Math.atan2(a[2], a[8]), a = -Math.PI / 2, d = 0) : (j = Math.atan2( - a[6], a[0]), d = Math.atan2( - a[5], a[4]), a = Math.asin(a[3]));
            m = {
                yaw: j,
                pitch: a,
                roll: d
            };
            var d = w(m.yaw / v),
            a = m.pitch / v,
            f = d,
            h = c.view.hlookat,
            q = c.view.vlookat,
            k = c.view.camroll,
            t = h - p;
            j = q - u;
            if (E) {
                D && (n = w(180 + Number(e) - m.roll / v));
                if (70 < Math.abs(a)) {
                    f = b.alpha;
                    switch (e) {
                    case 0:
                        0 < a && (f += 180);
                        break;
                    case 90:
                        f += 90;
                        break;
                    case - 90 : f += -90;
                        break;
                    case 180:
                        0 > a && (f += 180)
                    }
                    f = w(f);
                    180 < Math.abs(f - d) && (f += f < d ? 360 : -360);
                    b = Math.min(1, (Math.abs(a) - 70) / 10);
                    d = d * (1 - b) + f * b;
                    n *= 1 - b
                }
                B += t;
                g += j;
                90 < Math.abs(a + g) && (g = 0 < a + g ? 90 - a: -90 - a);
                p = w( - d - 180 + B);
                u = Math.max(Math.min(a + g, 90), -90);
                180 < Math.abs(p - h) && (h += p > h ? 360 : -360);
                p = (1 - r) * p + r * h;
                u = (1 - r) * u + r * q;
                180 < Math.abs(n - k) && (k += n > k ? 360 : -360);
                n = (1 - r) * n + r * k;
                b = w(p);
                e = u;
                d = w(n);
                isNaN(b) || (c.view.hlookat = b);
                isNaN(e) || (c.view.vlookat = e);
                isNaN(d) || (c.view.camroll = d);
                0 != g && 0 < y && (0 == j ? 1 == y ? x = g = 0 : (x = 1 - (1 - x) * c.control.touchfriction, g *= 1 - Math.pow(y, 2) * x, 0.1 > Math.abs(g) && (x = g = 0)) : x = 0)
            } else if (null == s) s = m;
            else if (m.yaw != s.yaw || m.pitch != s.pitch || m.roll != s.roll) s = null,
            E = !0,
            H && (g = -a)
        }
    }
    function w(b) {
        b %= 360;
        return 180 >= b ? b: b - 360
    }
    function I(b) {
        return 0 <= "yesontrue1".indexOf(String(b).toLowerCase())
    }
    var c = null,
    e = null,
    t = !1,
    k, l = !1,
    y = 0,
    H = !1,
    D = !1,
    r = 0.5,
    G = !1,
    E = !1,
    s = null,
    B = 0,
    g = 0,
    p = 0,
    u = 0,
    n = 0,
    x = 0,
    v = Math.PI / 180;// 1 degree per PI
    this.registerplugin = function(b, g, m) {
        c = b;
        e = m;
        if ("%" != c.build.charAt(0) && ("1.0.8.14" > c.version || "2011-03-30" > c.build)) c.trace(3, "gyro plugin - too old krpano version (min. 1.0.8.14)");
        else {
            t = c._have_top_access;
            if (void 0 === t) {
                t = !1;
                try {
                    top && top.document && (t = !0)
                } catch(a) {}
            }
            window.DeviceOrientationEvent && window.addEventListener("deviceorientation", F, !1);
            e.registerattribute("available", !1,
            function() {},
            function() {
                return k
            });
            e.registerattribute("enabled", !0,
            function(a) {
                I(a) ? z() : C()
            },
            function() {
                return l
            });
            e.registerattribute("velastic", 0,
            function(a) {
                y = Math.max(Math.min(Number(a), 1), 0)
            },
            function() {
                return y
            });
            e.registerattribute("vrelative", !1,
            function(a) {
                H = I(a)
            },
            function() {
                return H
            });
            e.registerattribute("camroll", !1,
            function(a) {
                D = I(a)
            },
            function() {
                return D
            });
            e.registerattribute("friction", 0.5,
            function(a) {
                r = Math.max(Math.min(Number(a), 1), 0)
            },
            function() {
                return r
            });
            e.registerattribute("onavailable", null);
            e.enable = z;
            e.disable = C;
            e.toggle = M
        }
    };
    this.unloadplugin = function() {
        window.removeEventListener("deviceorientation", F, !1);
        C();
        c = e = null
    }
};*/


/* krpano 1.16.9 gyro plugin (build 2013-10-28) 
for devices with Gyro sensor (iPhone4 and iPad2 with iOS4.2+)
by Aldo Hoeben / fieldOfView.com
contributions by 
        Sjeiti / ronvalstar.nl
        Klaus / krpano.com
        
http://fieldofview.github.com/krpano_fovplugins/gyro/plugin.html
This software can be used free of charge and the source code is available under a Creative Commons Attribution license:
        http://creativecommons.org/licenses/by/3.0/     
*/
var krpanoplugin = function() {
	function z() {
		E = !1;
		s = null;
		void 0 === k ? l = !0 : k && !l ? (window.addEventListener("deviceorientation", J, !0), c.control.layer.addEventListener("touchstart", K, !0), c.control.layer.addEventListener("touchend", A, !0), c.control.layer.addEventListener("touchcancel", A, !0), l = !0, B = -L(), u = p = g = 0, n = c.view.camroll) : l = !1
	}
	function C() {
		k && l && (window.removeEventListener("deviceorientation", J, !0), c.control.layer.removeEventListener("touchstart", K), c.control.layer.removeEventListener("touchend", A), c.control.layer.removeEventListener("touchcancel", A));
		D && c.call("tween(view.camroll,0)");
		l = !1
	}
	function M() {
		l ? C() : z()
	}
	function F() {
		window.removeEventListener("deviceorientation", F, !1);
		c.device.realDesktop || (k = !0, l && (l = !1, z()), null != e.onavailable && c.call(e.onavailable, e))
	}
	function K() {
		G = !0
	}
	function A() {
		G = !1
	}
	function L() {
		var b = t ? top.orientation: window.orientation;
		isNaN(b) && (b = screen.width > screen.height, b = c.device.mobile ? b ? 90 : 0 : b ? 0 : 90);
		return b
	}
	// custom
	var arraySize = 30 ;
	var xArray = new Array(arraySize) ;
	var yArray = new Array(arraySize) ;
	var zArray = new Array(arraySize) ;
	var index = -1 ;
	var xx1Array = new Array(arraySize) ;
	var xx2Array = new Array(arraySize) ;
	var yy1Array = new Array(arraySize) ;
	var yy2Array = new Array(arraySize) ;
	var zz1Array = new Array(arraySize) ;
	var zz2Array = new Array(arraySize) ;
	function getNextIndex(idx, maxIndex) {
		if (idx < 0)
		{
			idx = 0 ;
		} else {
			idx++ ;
		}
		if (idx >= maxIndex)
		{
			idx = 0 ;
		}
		return idx ;
	}
	function shouldAddMod(array, limit) {
		var maxVal = array[0] ;
		var minVal = array[0] ;
		for (var i = 1; i < array.length; i++)
		{
			if (!isNaN(array[i]))
			{
				maxVal = Math.max(maxVal, array[i]) ;
				minVal = Math.min(minVal, array[i]) ;
			}
		}
		return (maxVal - minVal) > limit ;
	}
	var tt = 0 ;
	function myAlert(text) {
		if (tt < 10)
		{
			//alert(text) ;
			tt++ ;
		}
	}
	function average(array, idx, newVal, mod) {
		var i = 0 ;
		array[idx] = newVal ;
		var sum = 0 ;
		var n = 0 ;
		var limit = mod / 2 ;
		var should = shouldAddMod(array, limit) ;
		/*var maxVal = shouldAddMod(array, limit) ;
		for (var j = 0; j < array.length; j++)
		{
			if (!isNaN(array[j]))
			{
				if (maxVal - array[j] > limit)
				{
					sum = sum + array[j] + mod ;
				}
				else
				{
					sum += array[j] ;
				}
				n++ ;
			}
		}*/
		var avg = 0 ;
		for (var i = idx; ; )
		{
			if (!isNaN(array[i]))
			{
				var t = array[i] ;
				if (should && t < limit)
				{
					t = t + mod ;
				}
				sum += t ;
				n++ ;
			}

			i++ ;
			if (i == array.length)
			{
				i = 0 ;
			}
			if (i == idx)
			{
				break ;
			}
		}
		avg = sum / n;
		return Math.round(avg) % mod ;
	}

	function average(array, idx, newVal) {
		array[idx] = newVal ;
		var sum = 0.0 ;
		var n = 0 ;
		for (var i = 0; i < array.length; i++)
		{
			if (!isNaN(array[i]))
			{
				sum += array[i] ;
				n++ ;
			}
		}
		return sum / n ;
	}

	// end custom
	function J(b) {
		if (!G && l) {
			// custom
			// 重新计算a，h，d的值
			index = getNextIndex(index, arraySize) ;
			/*
			var xx = average(xArray, index, b.alpha, 360) ;
			var yy = average(yArray, index, b.beta + 180, 360) - 180 ;
			var zz = average(zArray, index, b.gamma + 90, 180) - 90 ;*/
			// end custom

			var xx = b.alpha ;
			var yy = b.beta ;
			var zz = b.gamma ;

			var e = L(),
			m,
			a = xx * v,
			h = yy * v,
			d = zz * v,
			j;

			j = Math.cos(a);
			var a = Math.sin(a),
			f = Math.cos(h),
			h = Math.sin(h),
			q = Math.cos(d),
			d = Math.sin(d);

			j = average(xx1Array, index, j) ;
			a = average(xx2Array, index, a) ;
			f = average(yy1Array, index, f) ;
			h = average(yy2Array, index, h) ;
			q = average(zz1Array, index, q) ;
			d = average(zz2Array, index, d) ;

			a = [a * d - j * h * q, -j * f, j * h * d + a * q, f * q, -h, -f * d, a * h * q + j * d, a * f, -a * h * d + j * q];
			0.9999 < a[3] ? (j = Math.atan2(a[2], a[8]), a = Math.PI / 2, d = 0) : -0.9999 > a[3] ? (j = Math.atan2(a[2], a[8]), a = -Math.PI / 2, d = 0) : (j = Math.atan2( - a[6], a[0]), d = Math.atan2( - a[5], a[4]), a = Math.asin(a[3]));
			m = {
				yaw: j,
				pitch: a,
				roll: d
			};
			var d = w(m.yaw / v),
			a = m.pitch / v,
			f = d,
			h = c.view.hlookat,
			q = c.view.vlookat,
			k = c.view.camroll,
			t = h - p;
			j = q - u;
			if (E) {
				D && (n = w(180 + Number(e) - m.roll / v));
				if (70 < Math.abs(a)) {
					f = xx;
					switch (e) {
					case 0:
						0 < a && (f += 180);
						break;
					case 90:
						f += 90;
						break;
					case - 90 : f += -90;
						break;
					case 180:
						0 > a && (f += 180)
					}
					f = w(f);
					180 < Math.abs(f - d) && (f += f < d ? 360 : -360);
					b = Math.min(1, (Math.abs(a) - 70) / 10);
					d = d * (1 - b) + f * b;
					n *= 1 - b
				}
				B += t;
				g += j;
				90 < Math.abs(a + g) && (g = 0 < a + g ? 90 - a: -90 - a);
				p = w( - d - 180 + B);
				u = Math.max(Math.min(a + g, 90), -90);
				180 < Math.abs(p - h) && (h += p > h ? 360 : -360);
				p = (1 - r) * p + r * h;
				u = (1 - r) * u + r * q;
				180 < Math.abs(n - k) && (k += n > k ? 360 : -360);
				n = (1 - r) * n + r * k;
				b = w(p);
				e = u;
				d = w(n);
				isNaN(b) || (c.view.hlookat = b);
				isNaN(e) || (c.view.vlookat = e);
				isNaN(d) || (c.view.camroll = d);
				0 != g && 0 < y && (0 == j ? 1 == y ? x = g = 0 : (x = 1 - (1 - x) * c.control.touchfriction, g *= 1 - Math.pow(y, 2) * x, 0.1 > Math.abs(g) && (x = g = 0)) : x = 0)
			} else if (null == s) s = m;
			else if (m.yaw != s.yaw || m.pitch != s.pitch || m.roll != s.roll) s = null,
			E = !0,
			H && (g = -a)
		}
	}
	function w(b) {
		b %= 360;
		return 180 >= b ? b: b - 360
	}
	function I(b) {
		return 0 <= "yesontrue1".indexOf(String(b).toLowerCase())
	}
	var c = null,
	e = null,
	t = !1,
	k, l = !1,
	y = 0,
	H = !1,
	D = !1,
	r = 0.5,
	G = !1,
	E = !1,
	s = null,
	B = 0,
	g = 0,
	p = 0,
	u = 0,
	n = 0,
	x = 0,
	v = Math.PI / 180;
	this.registerplugin = function(b, g, m) {
		c = b;
		e = m;
		if ("%" != c.build.charAt(0) && ("1.0.8.14" > c.version || "2011-03-30" > c.build)) c.trace(3, "gyro plugin - too old krpano version (min. 1.0.8.14)");
		else {
			t = c._have_top_access;
			if (void 0 === t) {
				t = !1;
				try {
					top && top.document && (t = !0)
				} catch(a) {}
			}
			window.DeviceOrientationEvent && window.addEventListener("deviceorientation", F, !1);
			e.registerattribute("available", !1,
			function() {},
			function() {
				return k
			});
			e.registerattribute("enabled", !0,
			function(a) {
				I(a) ? z() : C()
			},
			function() {
				return l
			});
			e.registerattribute("velastic", 0,
			function(a) {
				y = Math.max(Math.min(Number(a), 1), 0)
			},
			function() {
				return y
			});
			e.registerattribute("vrelative", !1,
			function(a) {
				H = I(a)
			},
			function() {
				return H
			});
			e.registerattribute("camroll", !1,
			function(a) {
				D = I(a)
			},
			function() {
				return D
			});
			e.registerattribute("friction", 0.5,
			function(a) {
				r = Math.max(Math.min(Number(a), 1), 0)
			},
			function() {
				return r
			});
			e.registerattribute("onavailable", null);
			e.enable = z;
			e.disable = C;
			e.toggle = M
		}
	};
	this.unloadplugin = function() {
		window.removeEventListener("deviceorientation", F, !1);
		C();
		c = e = null
	}
};