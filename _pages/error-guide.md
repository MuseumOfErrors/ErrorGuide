---
layout: page
title: Pokémon Error Card Guide
permalink: /error-guide/
---

<div class="container">
  <p>Welcome to the work-in-progress community guide on Pokémon error cards. This guide aims to help collectors of all levels with the various types of errors found in Pokémon cards and how to identify them.</p>
  <h1>Error Categories</h1>

  <div id="errorChart"></div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/7.8.5/d3.min.js"></script>
  <script>
    const data = {
      name: "Errors",
      children: [
        {
          name: "Pulled from Packs",
          children: [
            { name: "Miscuts" },
            { name: "Misalignments" },
            { name: "Misprints" }
          ]
        },
        {
          name: "Factory Direct Errors",
          children: [
            { name: "Test Prints" }
          ]
        },
        {
          name: "Non-Factory Made",
          children: [
            { name: "Non-Factory Cut" }
          ]
        }
      ]
    };

    const container = document.getElementById("errorChart");
    const width = container.clientWidth || 800;
    const height = Math.max(400, data.children.length * 100);

    const svg = d3.select("#errorChart")
      .append("svg")
      .attr("width", width)
      .attr("height", height)
      .append("g")
      .attr("transform", "translate(40,20)");

    const treeLayout = d3.tree().size([width - 80, height - 80]);
    const root = d3.hierarchy(data);
    treeLayout(root);

    svg.selectAll(".link")
      .data(root.links())
      .enter()
      .append("line")
      .attr("class", "link")
      .attr("x1", d => d.source.x)
      .attr("y1", d => d.source.y)
      .attr("x2", d => d.target.x)
      .attr("y2", d => d.target.y)
      .attr("stroke", "black");

    svg.selectAll(".node")
      .data(root.descendants())
      .enter()
      .append("circle")
      .attr("class", "node")
      .attr("cx", d => d.x)
      .attr("cy", d => d.y)
      .attr("r", 5)
      .attr("fill", "blue");

    svg.selectAll(".label")
      .data(root.descendants())
      .enter()
      .append("text")
      .attr("class", "label")
      .attr("x", d => d.x + 5)
      .attr("y", d => d.y)
      .text(d => d.data.name);
  </script>
</div>