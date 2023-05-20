using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ritpm.Models;

namespace ritpm.Controllers
{
    public class raveeshasController : Controller
    {
        private itpmEntities db = new itpmEntities();

        // GET: raveeshas
        public ActionResult Index()
        {
            return View(db.raveeshas.ToList());
        }

        // GET: raveeshas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            raveesha raveesha = db.raveeshas.Find(id);
            if (raveesha == null)
            {
                return HttpNotFound();
            }
            return View(raveesha);
        }

        // GET: raveeshas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: raveeshas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Contact_Number,No_Of_Dancing_Group,Category,Type")] raveesha raveesha)
        {
            if (ModelState.IsValid)
            {
                db.raveeshas.Add(raveesha);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(raveesha);
        }

        // GET: raveeshas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            raveesha raveesha = db.raveeshas.Find(id);
            if (raveesha == null)
            {
                return HttpNotFound();
            }
            return View(raveesha);
        }

        // POST: raveeshas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Contact_Number,No_Of_Dancing_Group,Category,Type")] raveesha raveesha)
        {
            if (ModelState.IsValid)
            {
                db.Entry(raveesha).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(raveesha);
        }

        // GET: raveeshas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            raveesha raveesha = db.raveeshas.Find(id);
            if (raveesha == null)
            {
                return HttpNotFound();
            }
            return View(raveesha);
        }

        // POST: raveeshas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            raveesha raveesha = db.raveeshas.Find(id);
            db.raveeshas.Remove(raveesha);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
